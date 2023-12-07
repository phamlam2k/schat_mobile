import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';
import 'package:schat/di/di_setup.dart';
import 'package:schat/routers.dart';
import 'package:schat/security/token_action.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Đảm bảo binding đã được khởi tạo
  await loadToken();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authController = Get.put(AuthController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: AppPages.routes,
    );
  }
}
