import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/auth/auth_binding.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/controllers/home/home_binding.dart';
import 'package:schat/presentation/middlewares/redirect_middleware.dart';
import 'package:schat/presentation/pages/auth/auth_page.dart';
import 'package:schat/presentation/pages/auth/verify_otp/verify_otp_screen.dart';
import 'package:schat/presentation/pages/forgot/forgot_password_page.dart';
import 'package:schat/presentation/pages/home/home_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.root,
      middlewares: [
        RedirectMiddleware(),
      ],
      page: () => Container(),
    ),
    GetPage(
      name: Routes.auth,
      binding: AuthBindings(),
      page: () => const LoginPage(),
    ),
     GetPage(
      name: Routes.verifyOtp,
      binding: AuthBindings(),
      page: () => const VerifyOtpPage(),
    ),
    GetPage(
      name: Routes.forgot,
      binding: AuthBindings(),
      page: () => const ForgotPasswordPage(),
    ),
    GetPage(
      name: Routes.login,
      binding: AuthBindings(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.home,
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];
}

void routingCallback(Routing? routing) {
  if (routing?.current == null) {
    return;
  }
  RxRoute().currentRoute.value = routing?.current ?? '';
}

class RxRoute {
  final Rx<String> currentRoute = ''.obs;

  // Private constructor
  RxRoute._internal();

  // The single instance
  static final RxRoute _instance = RxRoute._internal();

  // Factory constructor to return the instance
  factory RxRoute() {
    return _instance;
  }
}
