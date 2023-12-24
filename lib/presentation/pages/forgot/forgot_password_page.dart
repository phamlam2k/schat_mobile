import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/pages/forgot/widgets/forgot_password_form.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF209D4E),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ForgotPasswordForm(),
          ),
        ),
      ),
    );
  }
}
