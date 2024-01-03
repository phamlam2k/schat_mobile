import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_icons.dart';
import 'package:schat/presentation/widgets/base_button.dart';
import 'package:schat/presentation/widgets/base_input_form.dart';
import 'package:schat/presentation/widgets/base_input_pw.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/pages/auth/login/widgets/text_rules_link.dart';
import 'package:schat/layout/auth_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:schat/presentation/pages/auth/register/widgets/text_switch_link.dart';

class RegisterForm extends GetView<AuthController> {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return Form(
        key: controller.formKey,
        child: AuthLayout(
          body: Column(
            children: <Widget>[
              Text(
                t.signup_title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                    // Viet lai trong theme theo theme design
                    color: const Color(0xFF1F2937),
                    fontSize: 26.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: t.user_name,
                hintText: t.user_name,
                iconPath: AppIcons.person,
                controller: controller.fullNameController,
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: 'Email',
                hintText: 'Email',
                iconPath: AppIcons.email,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              BasePasswordInput(
                label: t.password,
                hintText: t.enter_password,
                iconPath: AppIcons.password,
                controller: controller.passwordController,
              ),
              const SizedBox(height: 16.0),
              BaseButton(
                label: t.signup,
                onPressed: controller.onRegister,
                // isLoading: snapshot.connectionState == ConnectionState.waiting,
              ),
              const SizedBox(height: 7.0),
              const RuleLinkText(),
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
