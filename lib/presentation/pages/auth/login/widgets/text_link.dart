import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';

class LoginLinkText extends GetView<AuthController> {
  const LoginLinkText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: <TextSpan>[
          const TextSpan(text: 'Bạn chưa có tài khoản? '),
          TextSpan(
            text: 'Đăng ký',
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                controller.onSwitchRegister();
              },
          ),
        ],
      ),
    );
  }
}
