import 'package:schat/data/providers/network/apis/auth/login_request.dart';



class AuthAPI {
  static Future login({
    required String? account,
    required String? password,
  }) async =>
      LoginRequest(
        account: account,
        password: password,
      ).request();
}
