import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';
import 'package:schat/presentation/routes/app_pages.dart';

class RedirectMiddleware extends GetMiddleware {
  RedirectMiddleware() : super(priority: 1);

  @override
  RouteSettings? redirect(String? route) {
    final appController = Get.find<AppController>();
    if (!appController.isLoggedIn && route != Routes.auth) {
      return RouteSettings(name: Routes.auth);
    }

    if (route != Routes.home) {
      return RouteSettings(name: Routes.home);
    }
    return null;
  }
}
