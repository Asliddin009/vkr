// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/data/network_auth_repository.dart' as _i8;
import '../../feature/auth/domain/auth_repository.dart' as _i7;
import '../../feature/auth/domain/auth_state/auth_cubit.dart' as _i9;
import '../data/dio_app_api.dart' as _i6;
import '../data/main_app_config.dart' as _i4;
import '../domain/app_api.dart' as _i5;
import '../domain/app_config.dart' as _i3;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppConfig>(
    _i4.ProdAppConfig(),
    registerFor: {_prod},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.DevAppConfig(),
    registerFor: {_dev},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.TestAppConfig(),
    registerFor: {_test},
  );
  gh.singleton<_i5.AppApi>(_i6.DioAppApi(get<_i3.AppConfig>()));
  gh.factory<_i7.AuthRepository>(
      () => _i8.NetworkAuthRepository(get<_i5.AppApi>()));
  gh.singleton<_i9.AuthCubit>(_i9.AuthCubit(get<_i7.AuthRepository>()));
  return get;
}
