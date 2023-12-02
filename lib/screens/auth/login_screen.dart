import 'package:flutter/material.dart';
import 'package:schat/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color(0xFF209D4E),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LoginForm(),
        ),
      ),
    );
  }
}
