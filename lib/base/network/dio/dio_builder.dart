// import 'package:dio/dio.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:schat/common/config/api_config.dart';
// import 'package:schat/common/logger/dio_logger.dart';
// import 'package:schat/utils/alice_helper.dart';
// import 'package:schat/di/di_setup.dart';
// import 'dio_interceptor.dart';

// class DioBuilder {
//   Dio? dio;

//   Dio getDio() {
//     if (dio == null) {
//       final BaseOptions options = BaseOptions(
//         baseUrl: getUrl(),
//         receiveDataWhenStatusError: true,
//         connectTimeout: const Duration(seconds: ApiConfig.connectTimeout),
//         receiveTimeout: const Duration(seconds: ApiConfig.receiveTimeout),
//         headers: {"accept": "application/json"},
//       );
//       dio = Dio(options);
//       dio?.options.headers['content-Type'] = 'Application/json';
//       dio?.interceptors.addAll(
//         [
//           PrettyDioLogger(
//             requestHeader: true,
//             requestBody: true,
//             responseHeader: true,
//           ),
//           DioInterceptor(),
//           getIt<AliceHelper>().alice.getDioInterceptor(),
//         ],
//       );
//     }
//     return dio!;
//   }

//   String getUrl() {
//     return dotenv.get('BASE_URL');
//   }
// }