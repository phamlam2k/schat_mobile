import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_text_styles.dart';
import 'package:schat/common/base_button.dart';
import 'package:schat/layout/auth_layout.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/pages/auth/register/widgets/text_switch_link.dart';

class VerifyOtpForm extends GetView<AuthController> {
  const VerifyOtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return AuthLayout(
      body: Column(
        children: <Widget>[
          Text(
            t.verify_otp_title,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium!.copyWith(
                // Viet lai trong theme theo theme design
                color: const Color(0xFF1F2937),
                fontSize: 26.2,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(color: AppColors.lightYellow),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: t.enter_otp,
                    style: AppTextStyles.body
                        .copyWith(color: AppColors.blackText, fontSize: 14),
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                          text: controller.emailController.text,
                          style: const TextStyle(fontWeight: FontWeight.bold))
                    ])),
          ),
          const SizedBox(height: 25.0),
          BaseButton(
            label: t.signup,
            onPressed: controller.onRegister,
            // isLoading: snapshot.connectionState == ConnectionState.waiting,
          ),
          const SizedBox(height: 7.0),
          const SizedBox(height: 20.0),
          const Align(
            alignment: Alignment.center,
            child: RegisterLinkText(),
          )
        ],
      ),
    );
  }
}
