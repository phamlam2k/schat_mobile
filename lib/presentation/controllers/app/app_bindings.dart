import 'package:get/get.dart';
import 'package:schat/app/services/local_storage.dart';
import 'package:schat/presentation/controllers/app/app_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      AppController(
        Get.find<LocalStorageService>(),
      ),
      permanent: true,
    );
  }
}
