import 'package:get/get.dart';
import 'package:schat/domain/repositories/auth_repository.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(
      authenticationRepository: Get.find<AuthenticationRepository>(),
      appController: Get.find<AppController>()
    ));
  }
}