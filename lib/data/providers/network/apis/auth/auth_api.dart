import 'package:schat/data/providers/network/apis/auth/forgot_pass_request.dart';
import 'package:schat/data/providers/network/apis/auth/login_request.dart';
import 'package:schat/data/providers/network/apis/auth/register_request.dart';
import 'package:schat/data/providers/network/apis/auth/verify_otp_request.dart';

class AuthAPI {
  static Future login({
    required String? account,
    required String? password,
  }) async =>
      LoginRequest(
        account: account,
        password: password,
      ).request();

  static Future register({
    required String? fullName,
    required String? password,
    required String? email,
  }) async =>
      RegisterRequest(
        fullName: fullName,
        email: email,
        password: password,
      ).request();

  static Future forgotPassword({
    required String? email,
  }) async =>
      ForgotPasswordRequest(
        email: email,
      ).request();

  static Future verifyOtp({
    required String? otp,
    required String? email,
  }) async =>
      VerifyOtpRequest(
        otp: otp,
        email: email,
      ).request();
}
