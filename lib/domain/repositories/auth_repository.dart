

abstract class AuthenticationRepository {
   Future login({
    required String account,
    required String password,
  });

}
