import 'package:get/get.dart';
import 'package:schat/domain/repositories/auth_repository.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
        AuthController(
            authenticationRepository: Get.find<AuthenticationRepository>()),
        permanent: true);
  }
}
