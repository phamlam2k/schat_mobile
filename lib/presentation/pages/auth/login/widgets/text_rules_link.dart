import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RuleLinkText extends StatelessWidget {
  const RuleLinkText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 11),
        children: <TextSpan>[
          const TextSpan(text: 'Bằng việc tạo tài khoản này, bạn đồng ý với '),
          TextSpan(
            text: 'chính sách & điều khoản',
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ' của chúng tôi'),
        ],
      ),
    );
  }
}
