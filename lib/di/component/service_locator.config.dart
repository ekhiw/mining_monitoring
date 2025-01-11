// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_storage/get_storage.dart' as _i792;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repository/device_regis_repository.dart' as _i788;
import '../../data/repository/login_repository.dart' as _i1019;
import '../../data/store/user_store.dart' as _i113;
import '../../router/app_router.dart' as _i630;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i630.SGGoRouter>(() => _i630.SGGoRouter());
    gh.factory<_i1019.LoginRepository>(
        () => _i1019.LoginRepository(gh<_i361.Dio>()));
    gh.factory<_i788.DeviceRegisRepository>(
        () => _i788.DeviceRegisRepository(gh<_i361.Dio>()));
    gh.factory<_i113.GetUserStoreHelper>(
        () => _i113.GetUserStoreHelper(gh<_i792.GetStorage>()));
    return this;
  }
}
