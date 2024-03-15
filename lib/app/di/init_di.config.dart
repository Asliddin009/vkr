// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/data/mock_auth_repository.dart' as _i6;
import '../../feature/auth/data/network_auth_repository.dart' as _i14;
import '../../feature/auth/domain/auth_bloc/auth_cubit.dart' as _i13;
import '../../feature/auth/domain/auth_repository.dart' as _i5;
import '../../feature/lessons/data/mock_lessons_repo.dart' as _i8;
import '../../feature/lessons/domain/cubit/lesson_cubit.dart' as _i15;
import '../../feature/lessons/domain/lessons_repo.dart' as _i7;
import '../../feature/qr_code_scanner/data/mock_qr_code_repo.dart' as _i10;
import '../../feature/qr_code_scanner/domain/cubit/qr_code_cubit.dart' as _i16;
import '../../feature/qr_code_scanner/domain/qe_code_repo.dart' as _i9;
import '../data/dio_app_api.dart' as _i12;
import '../data/main_app_config.dart' as _i4;
import '../domain/app_api.dart' as _i11;
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
  gh.factory<_i5.AuthRepository>(
    () => _i6.MockAuthRepository(),
    registerFor: {_test},
  );
  gh.factory<_i7.LessonsRepo>(
    () => _i8.MockLessonsRepo(),
    registerFor: {_test},
  );
  gh.factory<_i9.QrCodeRepo>(
    () => _i10.MockQrCodeRepo(),
    registerFor: {_test},
  );
  gh.singleton<_i11.AppApi>(_i12.DioAppApi(get<_i3.AppConfig>()));
  gh.singleton<_i13.AuthCubit>(_i13.AuthCubit(get<_i5.AuthRepository>()));
  gh.factory<_i5.AuthRepository>(
    () => _i14.NetworkAuthRepository(get<_i11.AppApi>()),
    registerFor: {_prod},
  );
  gh.singleton<_i15.LessonCubit>(_i15.LessonCubit(
    get<_i7.LessonsRepo>(),
    get<_i13.AuthCubit>(),
  ));
  gh.singleton<_i16.QrCodeCubit>(_i16.QrCodeCubit(get<_i9.QrCodeRepo>()));
  return get;
}
