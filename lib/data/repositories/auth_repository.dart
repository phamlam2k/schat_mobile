import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:schat/domain/repositories/auth_repository.dart';


class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<UserContext> signUp(String username) async {
    //Fake sign up action
    await Future.delayed(const Duration(seconds: 1));
    return UserContext();
  }

  // @override
  // Future<String> signIn(String email, bool resendCode) async {
  //   final Map<String, dynamic> res = await AuthAPI.register(email, resendCode).request();
  //   if (res['message'] != null) {
  //     return res['message'];
  //   }
  //   return '';
  // }

}
