// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************

// // ignore_for_file: type=lint
// // coverage:ignore-file

// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:dio/dio.dart' as _i4;
// import 'package:event_bus/event_bus.dart' as _i5;
// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;

// import '../common/local_data/shared_pref.dart' as _i6;
// import '../common/logger/logger.dart' as _i7;
// import '../features/login/data/datasource/remote/datasource.dart' as _i9;
// import '../features/login/data/datasource/remote/datasource_impl.dart' as _i10;
// import '../features/login/data/datasource/remote/service/login_service.dart'
//     as _i8;
// import '../features/login/data/repositories/login_repository.dart' as _i12;
// import '../features/login/domain/repositories/login_repository.dart' as _i11;
// import '../features/login/domain/usecases/login_use_case.dart' as _i13;
// import '../features/login/domain/usecases/login_use_case_impl.dart' as _i14;
// import '../utils/alice_helper.dart' as _i3;
// import 'app_module.dart' as _i15;

// // initializes the registration of main-scope dependencies inside of GetIt
// _i1.GetIt $initGetIt(
//   _i1.GetIt getIt, {
//   String? environment,
//   _i2.EnvironmentFilter? environmentFilter,
// }) {
//   final gh = _i2.GetItHelper(
//     getIt,
//     environment,
//     environmentFilter,
//   );
//   final appModule = _$AppModule();
//   gh.singleton<_i3.AliceHelper>(_i3.AliceHelper());
//   gh.singleton<_i4.Dio>(appModule.dio);
//   gh.singleton<_i5.EventBus>(appModule.eventBus);
//   gh.factory<_i6.LocalStorage>(() => _i6.LocalStorageImpl());
//   gh.singleton<_i7.LogUtils>(_i7.LogUtils());
//   gh.factory<_i8.LoginService>(() => _i8.LoginService(gh<_i4.Dio>()));
//   gh.factory<_i9.DataSource>(() => _i10.DataSourceImpl(gh<_i8.LoginService>()));
//   gh.factory<_i11.LoginRepository>(() => _i12.LoginRepositoryImpl(
//         gh<_i9.DataSource>(),
//         gh<_i6.LocalStorage>(),
//       ));
//   gh.factory<_i13.LoginUsecase>(
//       () => _i14.LoginUseCaseImpl(gh<_i11.LoginRepository>()));
//   return getIt;
// }

// class _$AppModule extends _i15.AppModule {}
