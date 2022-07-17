import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import '../profile/cubit/profile_cubit.dart';


class ConfirmSecurityOTP extends StatefulWidget {

  const ConfirmSecurityOTP({Key? key}) : super(key: key);
  @override
  State<ConfirmSecurityOTP> createState() => _ConfirmSecurityOTPState();
}

class _ConfirmSecurityOTPState extends State<ConfirmSecurityOTP> {
  int smsCodeTimeoutSeconds = 60;
  bool resend = false;
  void onTimerCompleted(){
    if(resend) startTimer();
  }
  ///The timer instance.
  late Timer? _timer;

  ///The number of seconds past since the timer started.
  int _seconds = 0;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  ///Start the timer.
  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_seconds == smsCodeTimeoutSeconds) {
          timer.cancel();
          onTimerCompleted();
        } else {
          setState(() {
            _seconds++;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  ///Format [value] seconds into the mm:ss format.
  String formatSeconds(int value) =>
      '${formatDecimal(value ~/ 60)}:${formatDecimal(value % 60)}';

  ///Format decimals into the ss format.
  String formatDecimal(int value) => value < 10 ? '0$value' : value.toString();


  @override
  Widget build(BuildContext context) {
    final phoneNumber = context.select(
        (AuthCubit authCubit) => authCubit.state.userModel.phoneNumber);
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<ProfileCubit, ProfileState>(
            listenWhen: (p, c) =>
                p.success != c.success && c.success.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
            },
          ),
          BlocListener<ProfileCubit, ProfileState>(
            listenWhen: (p, c) =>
                p.failure != c.failure && c.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
        ],
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return SafeArea(
                child: Semantics(
                  label: "Confirm security pin update with otp",
                  child: SingleChildScrollView(
                                  child: Padding(
                  padding: kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          context.read<ProfileCubit>().reset();
                          context.router.pop();
                        },
                        child: const Icon(Icons.close),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'We sent an OTP to the number $phoneNumber',
                        style: titleText.copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BlocBuilder<ProfileCubit, ProfileState>(
                        builder: (context, state) {
                          return Semantics(
                            textField: true,
                            textDirection: TextDirection.ltr,
                            label: "OTP Text field",
                            child: OTPTextField(
                              length: 6,
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 38,
                              fieldHeight: 42,
                              style: subTitle.copyWith(color: kPrimaryColor),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.box,
                              otpFieldStyle: OtpFieldStyle(
                                  borderColor: kgreyColor,
                                  focusBorderColor: kPrimaryColor),
                              keyboardType: TextInputType.number,
                              onCompleted: (value) => context
                                  .read<ProfileCubit>()
                                  .smsCodeChanged(smsCode: value),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocSelector<ProfileCubit, ProfileState,
                          bool>(
                        selector: (state) {
                          return state.phoneNumber.isEmpty;
                        },
                        builder: (context, inValidPhone) {
                          return CustomAuthFilledButton(
                            text: "VERIFY",
                            onTap: () => context
                                .read<ProfileCubit>()
                                .verifySmsCode(),
                            disabled: inValidPhone,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: () {
                            setState(() {
                              resend = true;
                            });
                            context
                              .read<ProfileCubit>()
                              .signInWithPhoneNumber();
                          }, child: Text("Resend", style: subTitle.copyWith(fontSize: 13, color: kBlackColor),)),
                          const Spacer(),
                          countDownTimer(
                            smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                          ),
                        ],
                      ),
                    ],
                  ),
                                  ),
                                ),
                ));
          },
        ),
      ),
    );
  }

  Widget countDownTimer({required int smsCodeTimeoutSeconds}){
    return Text(
      formatSeconds(smsCodeTimeoutSeconds - _seconds),
      style: const TextStyle(color: Colors.grey),
    );
  }
}