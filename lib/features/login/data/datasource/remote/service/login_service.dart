// // ignore_for_file: type=lint
// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:retrofit/http.dart';
// import 'package:schat/base/network/models/base_data.dart';
// import 'package:schat/features/login/data/model/login_response.dart';

// part 'login_service.g.dart';

// @RestApi()
// @Injectable()
// abstract class LoginService {
//   @factoryMethod
//   factory LoginService(Dio dio) = _LoginService;

//   @POST('/auth/login')
//   Future<BaseData<LoginResponseModelData>> login({
//     @Body() required Map<String, dynamic> body,
//   });
// }
