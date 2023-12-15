import 'package:get/get.dart';
import 'package:schat/presentation/controllers/auth/auth_binding.dart';
import 'package:schat/presentation/pages/auth/auth_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.root,
      binding: AuthBindings(),
      page: () => const LoginPage(),
    ),
  ];
}

void routingCallback(Routing? routing) {
  if (routing?.current == null) {
    return;
  }
  RxRoute().currentRoute.value = routing?.current ?? '';
}

class RxRoute {
  final Rx<String> currentRoute = ''.obs;

  // Private constructor
  RxRoute._internal();

  // The single instance
  static final RxRoute _instance = RxRoute._internal();

  // Factory constructor to return the instance
  factory RxRoute() {
    return _instance;
  }
}
