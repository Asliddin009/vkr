import 'package:client_vkr/app/domain/app_api.dart';
import 'package:client_vkr/feature/auth/domain/auth_repository.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
@prod
class NetworkAuthRepository implements AuthRepository {
  final AppApi api;

  NetworkAuthRepository(this.api);

  @override
  Future<UserEntity> signIn(
      {required String password, required String username}) async {
    try {
      final response = await api.signIn(password: password, login: username);
      return UserEntity.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future getInfo() {
    throw UnimplementedError();
  }

  @override
  Future logout() {
    throw UnimplementedError();
  }
}
