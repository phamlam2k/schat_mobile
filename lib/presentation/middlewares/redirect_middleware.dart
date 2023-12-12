import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';


class RedirectMiddleware extends GetMiddleware {
  RedirectMiddleware() : super(priority: 1);

  @override
  RouteSettings? redirect(String? route) {
    final authController = Get.find<AuthController>();
  }
}
