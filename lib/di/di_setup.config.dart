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
import '../utils/alice_helper.dart' as _i3;
import 'app_module.dart' as _i7;

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
  return getIt;
}

class _$AppModule extends _i7.AppModule {}
