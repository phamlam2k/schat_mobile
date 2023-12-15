import 'package:schat/data/providers/network/apis/auth/login_request.dart';
import 'package:schat/data/providers/network/apis/auth/register_request.dart';

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
}
