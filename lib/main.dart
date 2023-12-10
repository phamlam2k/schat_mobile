import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/controllers/auth_controller.dart';
import 'package:schat/di/di_setup.dart';
import 'package:schat/routers.dart';
import 'package:schat/security/token_action.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String envConfig(String flavor) {
  switch (flavor) {
    case 'dev':
      return 'assets/env/.env_dev';
    case 'staging':
      return 'assets/env/.env_staging';
    case 'production':
      return 'assets/env/.env_production';
    default:
      return 'assets/env/.env_dev';
  }
}

class EnvironmentConfig {
  static const APP_NAME = String.fromEnvironment('DART_DEFINES_APP_NAME', defaultValue: "Karate");
  static const APP_SUFFIX = String.fromEnvironment('DART_DEFINES_APP_SUFFIX');
  static const BASE_URL = String.fromEnvironment('DART_DEFINES_APP_SUFFIX',
      defaultValue: "https://dev.danhdue.com/");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
    const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
  await dotenv.load(
    fileName: envConfig(flavor),
  );// Đảm bảo binding đã được khởi tạo
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
