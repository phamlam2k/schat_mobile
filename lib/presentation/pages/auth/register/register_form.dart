import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/config/app_icons.dart';
import 'package:schat/common/base_button.dart';
import 'package:schat/common/base_checkbox.dart';
import 'package:schat/common/base_input_form.dart';
import 'package:schat/common/base_input_pw.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/pages/auth/login/widgets/text_link.dart';
import 'package:schat/presentation/pages/auth/login/widgets/text_rules_link.dart';
import 'package:schat/layout/auth_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                t.signin_title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                    // Viet lai trong theme theo theme design
                    color: const Color(0xFF1F2937),
                    fontSize: 26.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              Text(
                t.signin_des,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: const Color(0xFF4B5563), // Màu sắc cho slogan
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: t.user_name,
                hintText: t.user_name,
                iconPath: AppIcons.person,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: t.user_name,
                hintText: t.user_name,
                iconPath: AppIcons.person,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              BasePasswordInput(
                label: t.password,
                hintText: t.enter_password,
                iconPath: AppIcons.person,
                controller: controller.passwordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BaseCheckBox(label: t.remember),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      t.forgot_password,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight
                            .bold, // Màu sắc của link thường là màu xanh
                        decoration: TextDecoration
                            .underline, // Gạch chân để chỉ là có thể nhấn vào
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              BaseButton(
                label: t.login,
                onPressed: controller.onLogin,
                // isLoading: snapshot.connectionState == ConnectionState.waiting,
              ),
              const SizedBox(height: 7.0),
              const RuleLinkText(),
              const SizedBox(height: 20.0),
              const Align(
                alignment: Alignment.center,
                child: LoginLinkText(),
              )
            ],
          ),
        ));
  }
}
