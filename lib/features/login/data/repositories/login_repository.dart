// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:schat/base/network/errors/error.dart';
// import 'package:schat/base/network/errors/extension.dart';
// import 'package:schat/common/local_data/shared_pref.dart';
// import 'package:schat/features/login/data/datasource/remote/datasource.dart';
// import 'package:schat/features/login/data/model/login.dart';
// import 'package:schat/features/login/domain/entities/login_entity.dart';
// import 'package:schat/features/login/domain/entities/login_response_entity.dart';
// import 'package:schat/features/login/domain/repositories/login_repository.dart';


// @Injectable(as: LoginRepository)
// class LoginRepositoryImpl implements LoginRepository {
//   LoginRepositoryImpl(this._remoteDataSource, this._localStorage);

//   final DataSource _remoteDataSource;
//   final LocalStorage _localStorage;
//   @override
//   Future<Either<BaseError, LoginResponseEntity>> login(
//       LoginEntity loginEntity) async {
//     try {
//       final result = await _remoteDataSource.login(
//           loginEntity: Login(
//               account: loginEntity.account,
//               password: loginEntity.password,));
//       // await _localStorage.save('accessToken', result.data?.attributes.accessToken);
//       // var data = await LocalStorageImpl().get('accessToken');
//       print(result);
//       return right((result.data ?? []) as LoginResponseEntity);
//     } on DioException catch (exception) {
//       print(exception.error);
//       final data = exception.response!.data as Map<String, dynamic>;
//       final error = (data['errors'] as List<dynamic>).first;
//       final title = error['title'];
//       final detail = error['detail'];
//       if(title != ''){
//         return left(BaseError.messageError(title, detail));
//       }
//       return left(exception.baseError);
//     }
//   }
// }
