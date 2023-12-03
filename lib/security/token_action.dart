import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';
import 'package:schat/utils/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveToken(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(Constant.accessToken, token);
}

loadToken() async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(Constant.accessToken) ?? '';
    final authController = Get.find<AuthController>();
    authController.setToken(accessToken);
  } catch (err) {
    print(err);
  }
}

getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return await prefs.get(Constant.accessToken);
}
