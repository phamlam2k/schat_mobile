import 'package:get/get.dart';
import 'package:schat/presentation/controllers/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
