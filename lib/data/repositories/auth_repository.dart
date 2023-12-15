import 'package:schat/data/providers/network/apis/auth/auth_api.dart';
import 'package:schat/domain/repositories/auth_repository.dart';


class AuthenticationRepositoryIml extends AuthenticationRepository {

  @override
  Future login({
    required String? account,
    required String? password,
  }) async =>
      AuthAPI.login(
        account: account,
        password: password,
      );
}
