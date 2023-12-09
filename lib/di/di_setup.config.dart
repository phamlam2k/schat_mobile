// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:event_bus/event_bus.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/logger/logger.dart' as _i6;
import '../features/login/data/datasource/remote/datasource.dart' as _i8;
import '../features/login/data/datasource/remote/datasource_impl.dart' as _i9;
import '../features/login/data/datasource/remote/service/login_service.dart'
    as _i7;
import '../utils/alice_helper.dart' as _i3;
import 'app_module.dart' as _i10;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.AliceHelper>(_i3.AliceHelper());
  gh.singleton<_i4.Dio>(appModule.dio);
  gh.singleton<_i5.EventBus>(appModule.eventBus);
  gh.singleton<_i6.LogUtils>(_i6.LogUtils());
  gh.factory<_i7.LoginService>(() => _i7.LoginService(gh<_i4.Dio>()));
  gh.factory<_i8.DataSource>(() => _i9.DataSourceImpl(gh<_i7.LoginService>()));
  return getIt;
}

class _$AppModule extends _i10.AppModule {}
