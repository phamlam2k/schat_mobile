import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget body;

  const AuthLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_chat.png'),
              const SizedBox(width: 8),
              const Text(
                'weStock',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4), // Khoảng cách giữa dòng chữ và slogan
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Cộng đồng nhà đầu tư chuyên nghiệp',
              style: TextStyle(
                color: Colors.white70, // Màu sắc cho slogan
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 12, left: 12, top: 60, bottom: 40),
            margin: const EdgeInsets.only(top: 20, bottom: 30),
            child: body,
            decoration: BoxDecoration(
              color: Colors.white, // Màu nền của container
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
