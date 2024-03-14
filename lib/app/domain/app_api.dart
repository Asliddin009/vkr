import 'package:dio/dio.dart';

abstract class AppApi {
  Future<dynamic> signIn({
    required String password,
    required String login,
  });

  Future<dynamic> refreshToken({String? refreshToken});

  Future<dynamic> request(String path);
  Future<dynamic> fetch(RequestOptions requestOptions);
}
