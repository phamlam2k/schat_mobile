import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/core/exceptions/api_response_exception.dart';
import 'package:schat/app/helpers/snack_bar_helper.dart';
import 'package:schat/domain/repositories/auth_repository.dart';

class AuthController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  AuthController({
    required this.authenticationRepository,
  });

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final isRegister = false.obs;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    // _rxUserContext.value = _store.userContext;
    super.onInit();
  }

  Future<void> onLogin() async {
    try {
      if (formKey.currentState?.validate() ?? false) {
        // Nếu form hợp lệ, lưu trữ các field và in giá trị ra
        formKey.currentState?.save();
        // Lấy giá trị từ các field sử dụng các controller
        final response = await authenticationRepository.login(
          account: emailController.text,
          password: passwordController.text,
        );
        print(response);
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  void onRegister() {
    isRegister.value = true;
  }
}
