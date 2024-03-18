import 'package:client_vkr/feature/auth/domain/auth_repository.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
@test
class MockAuthRepository implements AuthRepository {
  @override
  Future<UserEntity> signIn(
      {required String password, required String username}) {
    return Future.delayed(const Duration(seconds: 1), () {
      if (username == 'test2') {
        return const UserEntity(
            userType: 'студент',
            name: "Сайдалиев Аслиддин Джамалидинович",
            isTeacher: false);
      }
      return const UserEntity(
          userType: 'преподаватель',
          name: 'Шицелов Анатолий Вячеславович',
          isTeacher: true);
    });
  }

  @override
  Future<UserEntity> getInfo() {
    return Future.delayed(const Duration(seconds: 2), () {
      return const UserEntity(
          userType: 'студент',
          name: "Сайдалиев Аслиддин Джамалидинович",
          isTeacher: false);
    });
  }

  @override
  Future logout() {
    return Future.delayed(const Duration(seconds: 1), () {
      //Delete Token
    });
  }
}
