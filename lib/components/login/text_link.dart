import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginLinkText extends StatelessWidget {
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
                Navigator.of(context).pushNamed('/register');
              },
          ),
        ],
      ),
    );
  }
}
