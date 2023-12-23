import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_colors.dart';
import 'package:schat/app/config/app_icons.dart';
import 'package:schat/common/base_button.dart';
import 'package:schat/common/base_input_form.dart';
import 'package:schat/layout/auth_layout.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:schat/presentation/pages/auth/register/widgets/text_switch_link.dart';

class ForgotPasswordForm extends GetView<AuthController> {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return Form(
        key: controller.forgotKey,
        child: AuthLayout(
          body: Column(
            children: <Widget>[
              Text(
                t.forgot_title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                    // Viet lai trong theme theo theme design
                    color: const Color(0xFF1F2937),
                    fontSize: 26.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: AppColors.yellowLight),
                child: Text(
                  t.forgot_help_text,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF4B5563), // Màu sắc cho slogan
                    fontSize: 11,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: 'Email',
                hintText: 'Email',
                iconPath: AppIcons.email,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              BaseButton(
                label: t.login,
                onPressed: controller.onForgotPassword,
                // isLoading: snapshot.connectionState == ConnectionState.waiting,
              ),
              const SizedBox(height: 20.0),
              const Align(
                alignment: Alignment.center,
                child: RegisterLinkText(),
              )
            ],
          ),
        ));
  }
}
