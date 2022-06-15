
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _resume();
    });
  }

  Future _resume() async {
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    final bool isChecked =
        context.read<AuthCubit>().state.isUserCheckedFromAuthFacade;
    final bool isLoggedIn = context.read<AuthCubit>().state.isLoggedIn;

    if (isChecked) {
      CustomSnackbar.showSnackBar(context, "loggedin", false);
      if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(
            localizedReason: 'Scan Fingerprint to authenticate');
        if (didauthenticate != true) {
          CustomSnackbar.showSnackBar(context, "Authenticate to continue", true);
        } else {
          CustomSnackbar.showSnackBar(context, "awaiting details", false);
          if(isLoggedIn){
          CustomSnackbar.showSnackBar(context, "gotten details", false);
            context.router.replace(const HomePageRoute());
          }
        }
      }
    } else { 
      print("yawa dey ohhhhhhhhhh");
      context.router.replace(const OnboardingScreenRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    // final svg = SvgPicture.asset(
    //   'images/logo.svg',
    //   semanticsLabel: 'logo',
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 5,
              // child: svg,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fitHeight),
              ),
            ),
            const Text(
              "Fortfolio",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF00ADEF)),
            ),
          ],
        ),
      ),
    );
  }
}
