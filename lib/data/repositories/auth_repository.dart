import 'package:schat/data/providers/network/apis/auth/auth_api.dart';
import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:schat/domain/repositories/auth_repository.dart';

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<UserContext> login({
    required String? account,
    required String? password,
  }) async =>
      AuthAPI.login(
        account: account,
        password: password,
      );

  @override
  Future register(
          {required String? email,
          required String? password,
          required String? fullName}) async =>
      AuthAPI.register(
        fullName: fullName,
        email: email,
        password: password,
      );

  @override
  Future verifyOtp({required String? email, required String? otp}) async =>
      AuthAPI.verifyOtp(
        otp: otp,
        email: email,
      );

  @override
  Future forgotPassword({required String? email}) async =>
      AuthAPI.forgotPassword(
        email: email,
      );
}
