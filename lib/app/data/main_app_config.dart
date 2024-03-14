import 'package:injectable/injectable.dart';

import '../domain/app_config.dart';

@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig {
  @override
  String get baseUrl => "http://10.0.2.2:8001";

  @override
  String get host => Environment.prod;
}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig {
  @override
  String get baseUrl => "http://0.0.0.0:8001";

  @override
  String get host => Environment.dev;
}

@Singleton(as: AppConfig)
@test
class TestAppConfig implements AppConfig {
  @override
  String get baseUrl => "http://10.0.2.2";

  @override
  String get host => Environment.test;
}
