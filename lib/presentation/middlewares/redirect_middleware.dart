import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';


class RedirectMiddleware extends GetMiddleware {
  RedirectMiddleware() : super(priority: 1);

  @override
  RouteSettings? redirect(String? route) {
   if (Get.find<AuthController>().accessToken.value == '') {
      // Nếu người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
      return const RouteSettings(name: '/login');
    }
    return null; //Nếu đã đăng nhập, tiếp tục như bình thường
  }
}
