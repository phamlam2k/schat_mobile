import 'package:get/get.dart';

class AuthController extends GetxController {
  var accessToken = ''.obs;

  void setToken(String token) {
    accessToken.value = token;
  }

  getToken() {
    return accessToken.value;
  }
}
