import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/app/services/local_storage.dart';
import 'package:schat/app/util/dependency.dart';
import 'package:schat/controllers/auth_controller.dart';
import 'package:schat/di/di_setup.dart';
import 'package:schat/presentation/app.dart';
import 'package:schat/security/token_action.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



// class EnvironmentConfig {
//   static const APP_NAME = String.fromEnvironment('DART_DEFINES_APP_NAME', defaultValue: "Karate");
//   static const APP_SUFFIX = String.fromEnvironment('DART_DEFINES_APP_SUFFIX');
//   static const BASE_URL = String.fromEnvironment('DART_DEFINES_APP_SUFFIX',
//       defaultValue: "https://dev.danhdue.com/");
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized(); 
//     const flavor = String.fromEnvironment('flavor', defaultValue: 'dev');
//   await dotenv.load(
//     fileName: envConfig(flavor),
//   );// Đảm bảo binding đã được khởi tạo
//   await loadToken();
//   configureDependencies();
//   runApp(MyApp());
// }

void main() async {
  await dotenv.load(fileName: "assets/env/.env");
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  DependencyCreator.init();
  runApp(const App());
}

initServices() async {
  debugPrint('starting services ...');
  await Get.putAsync<LocalStorageService>(LocalStorageService().init, permanent: true);
  debugPrint('All services started...');
}
