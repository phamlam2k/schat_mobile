import 'package:get/get.dart';
import 'package:schat/presentation/controllers/login/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(()=>LoginController(), permanent: true);
  }
}