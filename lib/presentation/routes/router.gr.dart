// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i59;
import 'package:flutter/material.dart' as _i60;

import '../authentication/forgot_password/reset_password.dart' as _i9;
import '../authentication/sign_in/confirm_login_otp.dart' as _i6;
import '../authentication/sign_in/sign_in_form_email.dart' as _i3;
import '../authentication/sign_in/sign_in_form_phone.dart' as _i4;
import '../authentication/sign_up/confirm_signup_otp.dart' as _i7;
import '../authentication/sign_up/sign_up_form.dart' as _i8;
import '../authentication/sign_up/sign_up_form_phone.dart' as _i5;
import '../home/dashboard/dashboard.dart' as _i56;
import '../home/dashboard/screens/payment_method/bank/add_bank.dart' as _i16;
import '../home/dashboard/screens/payment_method/bank/bank_wallet.dart' as _i20;
import '../home/dashboard/screens/payment_method/bank/verify_bank.dart' as _i17;
import '../home/dashboard/screens/payment_method/crypto/add_crypto_wallet.dart'
    as _i18;
import '../home/dashboard/screens/payment_method/crypto/crypto_wallet.dart'
    as _i21;
import '../home/dashboard/screens/payment_method/crypto/verify_crypto_wallet.dart'
    as _i19;
import '../home/dashboard/screens/payment_method/payment_method.dart' as _i22;
import '../home/dashboard/screens/profile/profile.dart' as _i11;
import '../home/dashboard/screens/security/change_password.dart' as _i15;
import '../home/dashboard/screens/security/security.dart' as _i14;
import '../home/dashboard/screens/support/faq.dart' as _i23;
import '../home/dashboard/screens/support/support.dart' as _i24;
import '../home/dashboard/screens/tac/terms_of_service.dart' as _i25;
import '../home/dashboard/screens/transactions/transactions.dart' as _i12;
import '../home/dashboard/screens/verification/upload.dart' as _i27;
import '../home/dashboard/screens/verification/upload_document.dart' as _i26;
import '../home/dashboard/screens/verification/utility/upload_utility_doc.dart'
    as _i29;
import '../home/dashboard/screens/verification/utility/utility.dart' as _i28;
import '../home/dashboard/screens/verification/verification.dart' as _i30;
import '../home/dashboard/screens/verification/verification_success.dart'
    as _i31;
import '../home/home_page.dart' as _i55;
import '../home/investment/calculator/investment_calculator.dart' as _i13;
import '../home/investment/investment.dart' as _i57;
import '../home/investment/notifications/notifications.dart' as _i10;
import '../home/investment/payment/bank/bank_invest.dart' as _i33;
import '../home/investment/payment/bank/domiciliary.dart' as _i35;
import '../home/investment/payment/bank/naira.dart' as _i34;
import '../home/investment/payment/crypto/crypto_invest.dart' as _i36;
import '../home/investment/payment/select_method.dart' as _i32;
import '../home/investment/type/fortcrypto/fortcrypto.dart' as _i37;
import '../home/investment/type/fortcrypto/invest.dart' as _i38;
import '../home/investment/type/fortdollar/fortdollar.dart' as _i39;
import '../home/investment/type/fortdollar/invest.dart' as _i40;
import '../home/investment/type/fortshield/fortshield.dart' as _i41;
import '../home/investment/type/fortshield/invest.dart' as _i42;
import '../home/wallet/investment/fortcrypto_info.dart' as _i51;
import '../home/wallet/investment/fortdollar_info.dart' as _i49;
import '../home/wallet/investment/fortshield_info.dart' as _i50;
import '../home/wallet/overview/wallet_engine.dart' as _i44;
import '../home/wallet/overview/wallet_overview.dart' as _i43;
import '../home/wallet/success.dart' as _i53;
import '../home/wallet/transactions/transactions.dart' as _i45;
import '../home/wallet/wallet.dart' as _i58;
import '../home/wallet/withdraw/bank/bank_withdrawal.dart' as _i47;
import '../home/wallet/withdraw/crypto/crypto_withdrawal.dart' as _i48;
import '../home/wallet/withdraw/select_method.dart' as _i46;
import '../home/wallet/withdraw/withdrawal.dart' as _i52;
import '../network/no_connection.dart' as _i54;
import '../splash/onboarding.dart' as _i2;
import '../splash/splash_Screen.dart' as _i1;

class AppRouter extends _i59.RootStackRouter {
  AppRouter([_i60.GlobalKey<_i60.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i59.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    OnboardingScreenRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OnboardingScreen());
    },
    SignInFormEmailRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInFormEmail());
    },
    SignInFormPhoneRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInFormPhone());
    },
    SignUpFormPhoneRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignUpFormPhone());
    },
    ConfirmLoginWithOTPRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ConfirmLoginWithOTP());
    },
    ConfirmSignupWithOTPRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ConfirmSignupWithOTP());
    },
    SignUpFormRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SignUpForm());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ResetPassword());
    },
    NotificationsPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.NotificationsPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ProfilePage());
    },
    DashboardTransactionsRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.DashboardTransactions());
    },
    CalculatorRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Calculator());
    },
    SecurityRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Security());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ChangePassword());
    },
    AddBankRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.AddBank());
    },
    VerifyBankRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.VerifyBank());
    },
    AddCryptoWalletRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.AddCryptoWallet());
    },
    VerifyCryptoWalletRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.VerifyCryptoWallet());
    },
    BankAddressRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.BankAddress());
    },
    CryptoWalletRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.CryptoWallet());
    },
    PaymentMethodRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.PaymentMethod());
    },
    FAQPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.FAQPage());
    },
    SupportPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.SupportPage());
    },
    TACPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.TACPage());
    },
    UploadDocumentImageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.UploadDocumentImage());
    },
    UploadPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.UploadPage());
    },
    UtilityPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.UtilityPage());
    },
    UploadUtilityDocRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.UploadUtilityDoc());
    },
    VerificationPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.VerificationPage());
    },
    VerificationSuccessRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.VerificationSuccess());
    },
    SelectInvestmentMethodRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.SelectInvestmentMethod());
    },
    BankInvestmentPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.BankInvestmentPage());
    },
    NairaAccountRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.NairaAccount());
    },
    DomiciliaryAccountRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.DomiciliaryAccount());
    },
    CryptoInvestmentPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.CryptoInvestmentPage());
    },
    FortCryptoRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.FortCrypto());
    },
    FortCryptoInvestmentRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i38.FortCryptoInvestment());
    },
    FortDollarRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.FortDollar());
    },
    FortDollarInvestmentRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i40.FortDollarInvestment());
    },
    FortShieldRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.FortShield());
    },
    FortShieldInvestmentRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.FortShieldInvestment());
    },
    WalletOverviewRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.WalletOverview());
    },
    WalletOverviewEngineRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i44.WalletOverviewEngine());
    },
    WalletTransactionsRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i45.WalletTransactions());
    },
    SelectWithdrawalMethodRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i46.SelectWithdrawalMethod());
    },
    BankWithdrawalRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i47.BankWithdrawal());
    },
    CryptoWithdrawalRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i48.CryptoWithdrawal());
    },
    FortDollarInvestmentInfoRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.FortDollarInvestmentInfo());
    },
    FortShieldInvestmentInfoRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i50.FortShieldInvestmentInfo());
    },
    FortCryptoInvestmentInfoRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i51.FortCryptoInvestmentInfo());
    },
    WithdrawalPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i52.WithdrawalPage());
    },
    WithdrawalSuccessRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i53.WithdrawalSuccess());
    },
    NoInternetPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i54.NoInternetPage());
    },
    HomePageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i55.HomePage());
    },
    DashboardRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i56.Dashboard());
    },
    InvestmentPageRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i57.InvestmentPage());
    },
    WalletRoute.name: (routeData) {
      return _i59.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i58.Wallet());
    }
  };

  @override
  List<_i59.RouteConfig> get routes => [
        _i59.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i59.RouteConfig(OnboardingScreenRoute.name,
            path: '/onboarding-screen'),
        _i59.RouteConfig(SignInFormEmailRoute.name,
            path: '/sign-in-form-email'),
        _i59.RouteConfig(SignInFormPhoneRoute.name,
            path: '/sign-in-form-phone'),
        _i59.RouteConfig(SignUpFormPhoneRoute.name,
            path: '/sign-up-form-phone'),
        _i59.RouteConfig(ConfirmLoginWithOTPRoute.name,
            path: '/confirm-login-with-ot-p'),
        _i59.RouteConfig(ConfirmSignupWithOTPRoute.name,
            path: '/confirm-signup-with-ot-p'),
        _i59.RouteConfig(SignUpFormRoute.name, path: '/sign-up-form'),
        _i59.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i59.RouteConfig(NotificationsPageRoute.name,
            path: 'notificationsPage'),
        _i59.RouteConfig(ProfilePageRoute.name, path: 'profilePage'),
        _i59.RouteConfig(DashboardTransactionsRoute.name,
            path: 'dashboardTransactions'),
        _i59.RouteConfig(CalculatorRoute.name, path: 'calculator'),
        _i59.RouteConfig(SecurityRoute.name, path: 'security'),
        _i59.RouteConfig(ChangePasswordRoute.name, path: 'changepassword'),
        _i59.RouteConfig(AddBankRoute.name, path: 'addBank'),
        _i59.RouteConfig(VerifyBankRoute.name, path: 'verifyBank'),
        _i59.RouteConfig(AddCryptoWalletRoute.name, path: 'addCryptoWallet'),
        _i59.RouteConfig(VerifyCryptoWalletRoute.name,
            path: 'verifyCryptoWallet'),
        _i59.RouteConfig(BankAddressRoute.name, path: 'bankPage'),
        _i59.RouteConfig(CryptoWalletRoute.name, path: 'cryptoWalletPage'),
        _i59.RouteConfig(PaymentMethodRoute.name, path: 'paymentmethod'),
        _i59.RouteConfig(FAQPageRoute.name, path: 'faq'),
        _i59.RouteConfig(SupportPageRoute.name, path: 'support'),
        _i59.RouteConfig(TACPageRoute.name, path: 'tac'),
        _i59.RouteConfig(UploadDocumentImageRoute.name,
            path: 'uploadDocumentImage'),
        _i59.RouteConfig(UploadPageRoute.name, path: 'uploadPage'),
        _i59.RouteConfig(UtilityPageRoute.name, path: 'utilityPage'),
        _i59.RouteConfig(UploadUtilityDocRoute.name,
            path: 'uploadUtilityDocument'),
        _i59.RouteConfig(VerificationPageRoute.name, path: 'verificationPage'),
        _i59.RouteConfig(VerificationSuccessRoute.name,
            path: 'uploadVerificationSuccess'),
        _i59.RouteConfig(SelectInvestmentMethodRoute.name,
            path: 'selectInvestmentMethod'),
        _i59.RouteConfig(BankInvestmentPageRoute.name, path: 'bankInvestment'),
        _i59.RouteConfig(NairaAccountRoute.name, path: 'naira'),
        _i59.RouteConfig(DomiciliaryAccountRoute.name, path: 'dollar'),
        _i59.RouteConfig(CryptoInvestmentPageRoute.name,
            path: 'cryptoInvestment'),
        _i59.RouteConfig(FortCryptoRoute.name, path: 'fortcrypto'),
        _i59.RouteConfig(FortCryptoInvestmentRoute.name,
            path: 'fortcryptoinvest'),
        _i59.RouteConfig(FortDollarRoute.name, path: 'fortdollar'),
        _i59.RouteConfig(FortDollarInvestmentRoute.name,
            path: 'fortdollarinvest'),
        _i59.RouteConfig(FortShieldRoute.name, path: 'fortshield'),
        _i59.RouteConfig(FortShieldInvestmentRoute.name,
            path: 'fortshieldinvest'),
        _i59.RouteConfig(WalletOverviewRoute.name, path: 'walletOverview'),
        _i59.RouteConfig(WalletOverviewEngineRoute.name,
            path: 'walletOverviewEngine'),
        _i59.RouteConfig(WalletTransactionsRoute.name,
            path: 'walletTransactions'),
        _i59.RouteConfig(SelectWithdrawalMethodRoute.name,
            path: 'selectWithdrawalMethod'),
        _i59.RouteConfig(BankWithdrawalRoute.name, path: 'bankwithdrawal'),
        _i59.RouteConfig(CryptoWithdrawalRoute.name, path: 'cryptowithdrawal'),
        _i59.RouteConfig(FortDollarInvestmentInfoRoute.name,
            path: 'fortdollarinvestinfo'),
        _i59.RouteConfig(FortShieldInvestmentInfoRoute.name,
            path: 'fortshieldinvestinfo'),
        _i59.RouteConfig(FortCryptoInvestmentInfoRoute.name,
            path: 'fortcryptoinvestinfo'),
        _i59.RouteConfig(WithdrawalPageRoute.name, path: 'withdrawPage'),
        _i59.RouteConfig(WithdrawalSuccessRoute.name,
            path: 'withdrawalSuccess'),
        _i59.RouteConfig(NoInternetPageRoute.name, path: 'noInternet'),
        _i59.RouteConfig(HomePageRoute.name, path: '/home', children: [
          _i59.RouteConfig(DashboardRoute.name,
              path: 'dashboard', parent: HomePageRoute.name),
          _i59.RouteConfig(InvestmentPageRoute.name,
              path: 'investments', parent: HomePageRoute.name),
          _i59.RouteConfig(WalletRoute.name,
              path: 'wallet', parent: HomePageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i59.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreenRoute extends _i59.PageRouteInfo<void> {
  const OnboardingScreenRoute()
      : super(OnboardingScreenRoute.name, path: '/onboarding-screen');

  static const String name = 'OnboardingScreenRoute';
}

/// generated route for
/// [_i3.SignInFormEmail]
class SignInFormEmailRoute extends _i59.PageRouteInfo<void> {
  const SignInFormEmailRoute()
      : super(SignInFormEmailRoute.name, path: '/sign-in-form-email');

  static const String name = 'SignInFormEmailRoute';
}

/// generated route for
/// [_i4.SignInFormPhone]
class SignInFormPhoneRoute extends _i59.PageRouteInfo<void> {
  const SignInFormPhoneRoute()
      : super(SignInFormPhoneRoute.name, path: '/sign-in-form-phone');

  static const String name = 'SignInFormPhoneRoute';
}

/// generated route for
/// [_i5.SignUpFormPhone]
class SignUpFormPhoneRoute extends _i59.PageRouteInfo<void> {
  const SignUpFormPhoneRoute()
      : super(SignUpFormPhoneRoute.name, path: '/sign-up-form-phone');

  static const String name = 'SignUpFormPhoneRoute';
}

/// generated route for
/// [_i6.ConfirmLoginWithOTP]
class ConfirmLoginWithOTPRoute extends _i59.PageRouteInfo<void> {
  const ConfirmLoginWithOTPRoute()
      : super(ConfirmLoginWithOTPRoute.name, path: '/confirm-login-with-ot-p');

  static const String name = 'ConfirmLoginWithOTPRoute';
}

/// generated route for
/// [_i7.ConfirmSignupWithOTP]
class ConfirmSignupWithOTPRoute extends _i59.PageRouteInfo<void> {
  const ConfirmSignupWithOTPRoute()
      : super(ConfirmSignupWithOTPRoute.name,
            path: '/confirm-signup-with-ot-p');

  static const String name = 'ConfirmSignupWithOTPRoute';
}

/// generated route for
/// [_i8.SignUpForm]
class SignUpFormRoute extends _i59.PageRouteInfo<void> {
  const SignUpFormRoute() : super(SignUpFormRoute.name, path: '/sign-up-form');

  static const String name = 'SignUpFormRoute';
}

/// generated route for
/// [_i9.ResetPassword]
class ResetPasswordRoute extends _i59.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i10.NotificationsPage]
class NotificationsPageRoute extends _i59.PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(NotificationsPageRoute.name, path: 'notificationsPage');

  static const String name = 'NotificationsPageRoute';
}

/// generated route for
/// [_i11.ProfilePage]
class ProfilePageRoute extends _i59.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profilePage');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i12.DashboardTransactions]
class DashboardTransactionsRoute extends _i59.PageRouteInfo<void> {
  const DashboardTransactionsRoute()
      : super(DashboardTransactionsRoute.name, path: 'dashboardTransactions');

  static const String name = 'DashboardTransactionsRoute';
}

/// generated route for
/// [_i13.Calculator]
class CalculatorRoute extends _i59.PageRouteInfo<void> {
  const CalculatorRoute() : super(CalculatorRoute.name, path: 'calculator');

  static const String name = 'CalculatorRoute';
}

/// generated route for
/// [_i14.Security]
class SecurityRoute extends _i59.PageRouteInfo<void> {
  const SecurityRoute() : super(SecurityRoute.name, path: 'security');

  static const String name = 'SecurityRoute';
}

/// generated route for
/// [_i15.ChangePassword]
class ChangePasswordRoute extends _i59.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: 'changepassword');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i16.AddBank]
class AddBankRoute extends _i59.PageRouteInfo<void> {
  const AddBankRoute() : super(AddBankRoute.name, path: 'addBank');

  static const String name = 'AddBankRoute';
}

/// generated route for
/// [_i17.VerifyBank]
class VerifyBankRoute extends _i59.PageRouteInfo<void> {
  const VerifyBankRoute() : super(VerifyBankRoute.name, path: 'verifyBank');

  static const String name = 'VerifyBankRoute';
}

/// generated route for
/// [_i18.AddCryptoWallet]
class AddCryptoWalletRoute extends _i59.PageRouteInfo<void> {
  const AddCryptoWalletRoute()
      : super(AddCryptoWalletRoute.name, path: 'addCryptoWallet');

  static const String name = 'AddCryptoWalletRoute';
}

/// generated route for
/// [_i19.VerifyCryptoWallet]
class VerifyCryptoWalletRoute extends _i59.PageRouteInfo<void> {
  const VerifyCryptoWalletRoute()
      : super(VerifyCryptoWalletRoute.name, path: 'verifyCryptoWallet');

  static const String name = 'VerifyCryptoWalletRoute';
}

/// generated route for
/// [_i20.BankAddress]
class BankAddressRoute extends _i59.PageRouteInfo<void> {
  const BankAddressRoute() : super(BankAddressRoute.name, path: 'bankPage');

  static const String name = 'BankAddressRoute';
}

/// generated route for
/// [_i21.CryptoWallet]
class CryptoWalletRoute extends _i59.PageRouteInfo<void> {
  const CryptoWalletRoute()
      : super(CryptoWalletRoute.name, path: 'cryptoWalletPage');

  static const String name = 'CryptoWalletRoute';
}

/// generated route for
/// [_i22.PaymentMethod]
class PaymentMethodRoute extends _i59.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(PaymentMethodRoute.name, path: 'paymentmethod');

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i23.FAQPage]
class FAQPageRoute extends _i59.PageRouteInfo<void> {
  const FAQPageRoute() : super(FAQPageRoute.name, path: 'faq');

  static const String name = 'FAQPageRoute';
}

/// generated route for
/// [_i24.SupportPage]
class SupportPageRoute extends _i59.PageRouteInfo<void> {
  const SupportPageRoute() : super(SupportPageRoute.name, path: 'support');

  static const String name = 'SupportPageRoute';
}

/// generated route for
/// [_i25.TACPage]
class TACPageRoute extends _i59.PageRouteInfo<void> {
  const TACPageRoute() : super(TACPageRoute.name, path: 'tac');

  static const String name = 'TACPageRoute';
}

/// generated route for
/// [_i26.UploadDocumentImage]
class UploadDocumentImageRoute extends _i59.PageRouteInfo<void> {
  const UploadDocumentImageRoute()
      : super(UploadDocumentImageRoute.name, path: 'uploadDocumentImage');

  static const String name = 'UploadDocumentImageRoute';
}

/// generated route for
/// [_i27.UploadPage]
class UploadPageRoute extends _i59.PageRouteInfo<void> {
  const UploadPageRoute() : super(UploadPageRoute.name, path: 'uploadPage');

  static const String name = 'UploadPageRoute';
}

/// generated route for
/// [_i28.UtilityPage]
class UtilityPageRoute extends _i59.PageRouteInfo<void> {
  const UtilityPageRoute() : super(UtilityPageRoute.name, path: 'utilityPage');

  static const String name = 'UtilityPageRoute';
}

/// generated route for
/// [_i29.UploadUtilityDoc]
class UploadUtilityDocRoute extends _i59.PageRouteInfo<void> {
  const UploadUtilityDocRoute()
      : super(UploadUtilityDocRoute.name, path: 'uploadUtilityDocument');

  static const String name = 'UploadUtilityDocRoute';
}

/// generated route for
/// [_i30.VerificationPage]
class VerificationPageRoute extends _i59.PageRouteInfo<void> {
  const VerificationPageRoute()
      : super(VerificationPageRoute.name, path: 'verificationPage');

  static const String name = 'VerificationPageRoute';
}

/// generated route for
/// [_i31.VerificationSuccess]
class VerificationSuccessRoute extends _i59.PageRouteInfo<void> {
  const VerificationSuccessRoute()
      : super(VerificationSuccessRoute.name, path: 'uploadVerificationSuccess');

  static const String name = 'VerificationSuccessRoute';
}

/// generated route for
/// [_i32.SelectInvestmentMethod]
class SelectInvestmentMethodRoute extends _i59.PageRouteInfo<void> {
  const SelectInvestmentMethodRoute()
      : super(SelectInvestmentMethodRoute.name, path: 'selectInvestmentMethod');

  static const String name = 'SelectInvestmentMethodRoute';
}

/// generated route for
/// [_i33.BankInvestmentPage]
class BankInvestmentPageRoute extends _i59.PageRouteInfo<void> {
  const BankInvestmentPageRoute()
      : super(BankInvestmentPageRoute.name, path: 'bankInvestment');

  static const String name = 'BankInvestmentPageRoute';
}

/// generated route for
/// [_i34.NairaAccount]
class NairaAccountRoute extends _i59.PageRouteInfo<void> {
  const NairaAccountRoute() : super(NairaAccountRoute.name, path: 'naira');

  static const String name = 'NairaAccountRoute';
}

/// generated route for
/// [_i35.DomiciliaryAccount]
class DomiciliaryAccountRoute extends _i59.PageRouteInfo<void> {
  const DomiciliaryAccountRoute()
      : super(DomiciliaryAccountRoute.name, path: 'dollar');

  static const String name = 'DomiciliaryAccountRoute';
}

/// generated route for
/// [_i36.CryptoInvestmentPage]
class CryptoInvestmentPageRoute extends _i59.PageRouteInfo<void> {
  const CryptoInvestmentPageRoute()
      : super(CryptoInvestmentPageRoute.name, path: 'cryptoInvestment');

  static const String name = 'CryptoInvestmentPageRoute';
}

/// generated route for
/// [_i37.FortCrypto]
class FortCryptoRoute extends _i59.PageRouteInfo<void> {
  const FortCryptoRoute() : super(FortCryptoRoute.name, path: 'fortcrypto');

  static const String name = 'FortCryptoRoute';
}

/// generated route for
/// [_i38.FortCryptoInvestment]
class FortCryptoInvestmentRoute extends _i59.PageRouteInfo<void> {
  const FortCryptoInvestmentRoute()
      : super(FortCryptoInvestmentRoute.name, path: 'fortcryptoinvest');

  static const String name = 'FortCryptoInvestmentRoute';
}

/// generated route for
/// [_i39.FortDollar]
class FortDollarRoute extends _i59.PageRouteInfo<void> {
  const FortDollarRoute() : super(FortDollarRoute.name, path: 'fortdollar');

  static const String name = 'FortDollarRoute';
}

/// generated route for
/// [_i40.FortDollarInvestment]
class FortDollarInvestmentRoute extends _i59.PageRouteInfo<void> {
  const FortDollarInvestmentRoute()
      : super(FortDollarInvestmentRoute.name, path: 'fortdollarinvest');

  static const String name = 'FortDollarInvestmentRoute';
}

/// generated route for
/// [_i41.FortShield]
class FortShieldRoute extends _i59.PageRouteInfo<void> {
  const FortShieldRoute() : super(FortShieldRoute.name, path: 'fortshield');

  static const String name = 'FortShieldRoute';
}

/// generated route for
/// [_i42.FortShieldInvestment]
class FortShieldInvestmentRoute extends _i59.PageRouteInfo<void> {
  const FortShieldInvestmentRoute()
      : super(FortShieldInvestmentRoute.name, path: 'fortshieldinvest');

  static const String name = 'FortShieldInvestmentRoute';
}

/// generated route for
/// [_i43.WalletOverview]
class WalletOverviewRoute extends _i59.PageRouteInfo<void> {
  const WalletOverviewRoute()
      : super(WalletOverviewRoute.name, path: 'walletOverview');

  static const String name = 'WalletOverviewRoute';
}

/// generated route for
/// [_i44.WalletOverviewEngine]
class WalletOverviewEngineRoute extends _i59.PageRouteInfo<void> {
  const WalletOverviewEngineRoute()
      : super(WalletOverviewEngineRoute.name, path: 'walletOverviewEngine');

  static const String name = 'WalletOverviewEngineRoute';
}

/// generated route for
/// [_i45.WalletTransactions]
class WalletTransactionsRoute extends _i59.PageRouteInfo<void> {
  const WalletTransactionsRoute()
      : super(WalletTransactionsRoute.name, path: 'walletTransactions');

  static const String name = 'WalletTransactionsRoute';
}

/// generated route for
/// [_i46.SelectWithdrawalMethod]
class SelectWithdrawalMethodRoute extends _i59.PageRouteInfo<void> {
  const SelectWithdrawalMethodRoute()
      : super(SelectWithdrawalMethodRoute.name, path: 'selectWithdrawalMethod');

  static const String name = 'SelectWithdrawalMethodRoute';
}

/// generated route for
/// [_i47.BankWithdrawal]
class BankWithdrawalRoute extends _i59.PageRouteInfo<void> {
  const BankWithdrawalRoute()
      : super(BankWithdrawalRoute.name, path: 'bankwithdrawal');

  static const String name = 'BankWithdrawalRoute';
}

/// generated route for
/// [_i48.CryptoWithdrawal]
class CryptoWithdrawalRoute extends _i59.PageRouteInfo<void> {
  const CryptoWithdrawalRoute()
      : super(CryptoWithdrawalRoute.name, path: 'cryptowithdrawal');

  static const String name = 'CryptoWithdrawalRoute';
}

/// generated route for
/// [_i49.FortDollarInvestmentInfo]
class FortDollarInvestmentInfoRoute extends _i59.PageRouteInfo<void> {
  const FortDollarInvestmentInfoRoute()
      : super(FortDollarInvestmentInfoRoute.name, path: 'fortdollarinvestinfo');

  static const String name = 'FortDollarInvestmentInfoRoute';
}

/// generated route for
/// [_i50.FortShieldInvestmentInfo]
class FortShieldInvestmentInfoRoute extends _i59.PageRouteInfo<void> {
  const FortShieldInvestmentInfoRoute()
      : super(FortShieldInvestmentInfoRoute.name, path: 'fortshieldinvestinfo');

  static const String name = 'FortShieldInvestmentInfoRoute';
}

/// generated route for
/// [_i51.FortCryptoInvestmentInfo]
class FortCryptoInvestmentInfoRoute extends _i59.PageRouteInfo<void> {
  const FortCryptoInvestmentInfoRoute()
      : super(FortCryptoInvestmentInfoRoute.name, path: 'fortcryptoinvestinfo');

  static const String name = 'FortCryptoInvestmentInfoRoute';
}

/// generated route for
/// [_i52.WithdrawalPage]
class WithdrawalPageRoute extends _i59.PageRouteInfo<void> {
  const WithdrawalPageRoute()
      : super(WithdrawalPageRoute.name, path: 'withdrawPage');

  static const String name = 'WithdrawalPageRoute';
}

/// generated route for
/// [_i53.WithdrawalSuccess]
class WithdrawalSuccessRoute extends _i59.PageRouteInfo<void> {
  const WithdrawalSuccessRoute()
      : super(WithdrawalSuccessRoute.name, path: 'withdrawalSuccess');

  static const String name = 'WithdrawalSuccessRoute';
}

/// generated route for
/// [_i54.NoInternetPage]
class NoInternetPageRoute extends _i59.PageRouteInfo<void> {
  const NoInternetPageRoute()
      : super(NoInternetPageRoute.name, path: 'noInternet');

  static const String name = 'NoInternetPageRoute';
}

/// generated route for
/// [_i55.HomePage]
class HomePageRoute extends _i59.PageRouteInfo<void> {
  const HomePageRoute({List<_i59.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i56.Dashboard]
class DashboardRoute extends _i59.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i57.InvestmentPage]
class InvestmentPageRoute extends _i59.PageRouteInfo<void> {
  const InvestmentPageRoute()
      : super(InvestmentPageRoute.name, path: 'investments');

  static const String name = 'InvestmentPageRoute';
}

/// generated route for
/// [_i58.Wallet]
class WalletRoute extends _i59.PageRouteInfo<void> {
  const WalletRoute() : super(WalletRoute.name, path: 'wallet');

  static const String name = 'WalletRoute';
}
