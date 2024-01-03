import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/pages/auth/login/widgets/login_form.dart';
import 'package:schat/presentation/pages/auth/register/register_form.dart';
import 'package:schat/presentation/widgets/keyboard_dismiss.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF209D4E),
      body: Obx(() => Center(
            child: KeyboardDismiss(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: controller.isRegister.value ? const RegisterForm() : const LoginForm(),
                ),
              ),
            ),
          )),
    );
  }
}
