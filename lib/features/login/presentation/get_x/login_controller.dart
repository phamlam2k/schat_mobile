import 'package:get/get.dart';

class LoginController extends GetxController {
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
}