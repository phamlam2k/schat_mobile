import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/presentation/pages/change_password/widgets/change_password_form.dart';class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF209D4E),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ChangePasswordForm(),
          ),
        ),
      ),
    );
  }
}
