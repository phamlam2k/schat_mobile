import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/core/exceptions/api_response_exception.dart';
import 'package:schat/app/helpers/snack_bar_helper.dart';
import 'package:schat/app/util/token_manager.dart';
import 'package:schat/domain/repositories/auth_repository.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';
import 'package:schat/presentation/routes/app_pages.dart';

class AuthController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  final AppController appController;

  final _tokenManager = TokenManager();

  AuthController({
    required this.authenticationRepository,
    required this.appController,
  });

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final forgotKey = GlobalKey<FormState>();

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final isRegister = false.obs;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    otpController.dispose();
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
        formKey.currentState?.save();
        final response = await authenticationRepository.login(
          account: emailController.text,
          password: passwordController.text,
        );
        appController.login(response);
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    } finally {
      Get.offAllNamed(Routes.home);
    }
  }

  Future<void> onRegister() async {
    try {
      if (formKey.currentState?.validate() ?? false) {
        formKey.currentState?.save();
        final response = await authenticationRepository.register(
          fullName: fullNameController.text,
          email: emailController.text,
          password: passwordController.text,
        );
        if (response != null) {
          onSwitchVerifyOtp();
        }
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  Future<void> onVerifyOtp() async {
    try {
      final response = await authenticationRepository.verifyOtp(
        otp: otpController.text,
        email: emailController.text,
      );
      if (response != null) {
        Get.toNamed(Routes.root);
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  Future<void> onForgotPassword() async {
    try {
      if (forgotKey.currentState?.validate() ?? false) {
        // Nếu form hợp lệ, lưu trữ các field và in giá trị ra
        forgotKey.currentState?.save();
        // Lấy giá trị từ các field sử dụng các controller
        final response = await authenticationRepository.forgotPassword(
          email: emailController.text,
        );
        print(response);
      }
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  Future<void> onLogout() async {
    try {
      await authenticationRepository.logout(
        email: emailController.text,
      );
      appController.logout();
    } on APIResponseException catch (e) {
      SnackbarHelper.errorSnackbar(e.message);
    } catch (e) {
      SnackbarHelper.errorSnackbar(e.toString());
    }
  }

  void onSwitchRegister() {
    isRegister.value = true;
  }

  void onSwitchLogin() {
    isRegister.value = false;
  }

  void onSwitchVerifyOtp() {
    Get.toNamed(Routes.verifyOtp);
  }

  void onSwitchForgotPage() {
    Get.toNamed(Routes.forgot);
  }
}
