import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/domain/repositories/auth_repository.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:schat/presentation/pages/auth/verify_otp/widgets/verify_otp_form.dart';

class VerifyOtpPage extends GetView<AuthController> {
  const VerifyOtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF209D4E),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
             child: VerifyOtpForm(controller: controller),
          ),
        ),
      ));
  }
}
