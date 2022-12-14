import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_phone_state.dart';
part 'sign_in_form_phone_cubit.freezed.dart';

@injectable
class SignInFormPhoneCubit extends Cubit<SignInFormPhoneState> {
  late final IAuthFacade _authFacade;
  StreamSubscription<Either<String, String>>?
      _phoneNumberSignInSubscription;
  final int verificationCodeTimeout = 60;
  late final AuthCubit authCubit;
  SignInFormPhoneCubit() : super(SignInFormPhoneState.initial()) {
    _authFacade = getIt<IAuthFacade>();
    authCubit = getIt<AuthCubit>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();

    return super.close();
  }

  void smsCodeChanged({
    required String smsCode,
  }) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void phoneNumberChanged({
    required String phoneNumber,
  }) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void reset() {
    emit(
      state.copyWith(
        failure: "",
        verificationId: "",
        smsCode: "",
        phoneNumber: ""
      ),
    );
  }

  void signInWithPhoneNumber() {
    emit(state.copyWith(isSubmitting: true, failure: ""));

    _phoneNumberSignInSubscription = _authFacade
        .signInWithPhoneNumber(
            phoneNumber: state.phoneNumber, timeout: verificationCodeTimeout)
        .listen(
          (Either<String, String> failureOrVerificationId) =>
              failureOrVerificationId.fold(
            (String failure) {
              //This is the part where we receive failures like 'invalidPhoneNumber', 'smsTimeout' etc.
              emit(
                state.copyWith(
                    failure: failure, isSubmitting: false),
              );
            },
            (String verificationId) {
              // Catch this in Bloc Listener and take the user to SMS code entry page.
              emit(
                state.copyWith(
                  verificationId: verificationId,
                  isSubmitting: false,
                ),
              );
            },
          ),
        );
  }

  void verifySmsCode() async {
    emit(state.copyWith(isSubmitting: true, failure: ""));
    final verificationId = state.verificationId;
    final Either<String, String> failureOrSuccess = await _authFacade
        .verifyLoginSmsCode(smsCode: state.smsCode.trim(), verificationId: verificationId);
    failureOrSuccess.fold(
      (String failure) {
        emit(
          state.copyWith(failure: failure, isSubmitting: false),
        );
      },
      (success) async {
        emit(state.copyWith(success: "$success. Setting up user"));
        authCubit.stream.listen((authState) {
          if(authState.isLoggedIn){
            emit(state.copyWith(isSubmitting: false));
          }
        });
        // Verification completed successfully case.
        reset();
      },
    );
  }


}
