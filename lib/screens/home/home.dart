import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';
import 'package:schat/security/token_action.dart';

class Home extends StatelessWidget {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    print(getToken());

    return const Center(
      child: Scaffold(
        backgroundColor: const Color(0xFF209D4E),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
