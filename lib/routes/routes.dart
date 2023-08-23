
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:new_comerce/logic/bindings/auth_bindings.dart';
import 'package:new_comerce/logic/bindings/main_bidings.dart';
import 'package:new_comerce/logic/bindings/product_bindings.dart';
import 'package:new_comerce/view/screens/auth/forgot_password_screen.dart';
import 'package:new_comerce/view/screens/auth/login_screen.dart';
import 'package:new_comerce/view/screens/auth/signup_screen.dart';
import 'package:new_comerce/view/screens/card_screen.dart';
import 'package:new_comerce/view/screens/payment_screen.dart';
import 'package:new_comerce/view/screens/welcome_screen.dart';

import '../view/screens/main_screen.dart';


class AppRoutes {
  //initialRoute

  static const welcome = Routes.mainScreen;
  static const mainScreen = Routes.mainScreen;
  //getPages

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.paymentScreen,
      page: () => PayMentScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
        MainBininding(),
      ],
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
 static const paymentScreen = '/paymentScreen';
}