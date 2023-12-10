import 'dart:async';
import 'package:get/get.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';
import 'package:schat/features/login/domain/usecases/login_use_case.dart';

class LoginController extends GetxController {
  LoginController(this._loginUsecase);
  final LoginUsecase _loginUsecase;

  var accessToken = ''.obs;
  var userAccount = ''.obs;
  var userPassword = ''.obs;

  void setToken(String token) {
    accessToken.value = token;
  }

  getToken() {
    return accessToken.value;
  }

  void setAccount(String account) {
     userAccount.value = account;
  }

  getAccount(){
    return userAccount.value;
  }

  void setPassword(String password){
    userPassword.value = password;
  }

 getPassword(){
    return userPassword.value;
  }

  FutureOr<void> onLogin(String account, String password) async {
    
    final failureOrResponse = await _loginUsecase.login(
        loginEntity: LoginEntity(
      account: account,
      password: password,
    ));
    failureOrResponse.fold(
        (l) => {
             print(l)
            },
        (r) => print('succcess'));
    return;
  }
}