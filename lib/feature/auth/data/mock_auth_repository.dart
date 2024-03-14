import 'package:client_vkr/feature/auth/domain/auth_repository.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
@test
class MockAuthRepository implements AuthRepository {
  @override
  Future signIn({required String password, required String username}) {
    return Future.delayed(const Duration(seconds: 1), () {
      return const UserEntity(
          userType: 'test',
          name: 'Шицелов Анатолий Вячеславович',
          isTeacher: true);
    });
  }

  @override
  Future getInfo() {
    return Future.delayed(const Duration(seconds: 2), () {});
  }

  @override
  Future logout() {
    return Future.delayed(const Duration(seconds: 1), () {});
  }
}
