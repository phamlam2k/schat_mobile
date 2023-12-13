import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  
  // Add TextEditingControllers to manage the input text
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

   @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  onLogin() async {
    if (formKey.currentState?.validate() ?? false) {
      // Nếu form hợp lệ, lưu trữ các field và in giá trị ra
      formKey.currentState?.save();
      // Lấy giá trị từ các field sử dụng các controller

      // formKey(() {
      // loginFuture = login(emailController.text, passwordController.text);
      // });
    }
  }
}