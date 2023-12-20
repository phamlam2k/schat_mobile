abstract class AuthenticationRepository {
  Future login({
    required String account,
    required String password,
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
}
