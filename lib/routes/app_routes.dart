part of 'app_pages.dart';

abstract class Routes {
  static const String PRODUCTDETAILSSCREEN = '/productDetailsScreen';
  static const String MAINSCREEN = '/mainScreen';
  static const String ORDERSCREEN = '/orderScreen';
  static const String ORDERCONFIRMEDSCREEN = '/orderConfirmedScreen';
  static const String ADDRESSSCREEN = '/addressScreen';
  static const String PAYMENTSCREEN = '/paymentScreen';
  static const String CREATEACCOUNTSCREEN = '/createAccountScreen';
  static const String SINGUPSCREEN = '/singUpScreen';

  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$SINGUPSCREEN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}
