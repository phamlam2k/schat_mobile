import 'package:schat/domain/models/user_context/user_context.dart';

abstract class AuthenticationRepository {
  Future<UserContext> login({
    required String account,
    required String password,
  });

  Future logout({
    required String email,
  });

  Future register({
    required String fullName,
    required String email,
    required String password,
  });

  Future verifyOtp({
    required String email,
    required String otp,
  });

  Future forgotPassword({
    required String email,
  });
}
