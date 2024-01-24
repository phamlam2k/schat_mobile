import 'package:get/get.dart';
import 'package:schat/domain/repositories/conversation_repository.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';
import 'package:schat/presentation/controllers/auth/auth_controller.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
          authController: Get.find<AuthController>(),
          conversationRepository: Get.find<ConversationRepository>(),
          appController: Get.find<AppController>()
        ));
  }
}
