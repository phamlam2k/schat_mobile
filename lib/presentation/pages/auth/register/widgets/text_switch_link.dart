import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';

class RegisterLinkText extends GetView<AuthController> {
  const RegisterLinkText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: <TextSpan>[
          const TextSpan(text: 'Bạn đã có tài khoản? '),
          TextSpan(
            text: 'Đăng nhập',
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                controller.onSwitchLogin();
              },
          ),
        ],
      ),
    );
  }
}
