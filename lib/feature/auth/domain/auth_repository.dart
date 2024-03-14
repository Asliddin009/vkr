abstract class AuthRepository {
  Future<dynamic> signIn({
    required String password,
    required String username,
  });

  Future<dynamic> logout();
  Future<dynamic> getInfo();
}
