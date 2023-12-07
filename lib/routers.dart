import 'package:get/get.dart';
import 'package:schat/features/login/presentation/login_screen.dart';
import 'package:schat/screens/home/home.dart';
import 'package:schat/security/middlewares/auth_middleware.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => const LoginScreen(),
    ),
    GetPage(name: '/', page: () => Home(), middlewares: [AuthMiddleware()]),
  ];
}
