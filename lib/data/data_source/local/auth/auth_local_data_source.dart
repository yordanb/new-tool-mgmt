import '../../../model/auth/auth_model.dart';

abstract class AuthLocalDataSource {
  Future<void> setSession({
    required AuthModel authModel,
  });
  Future<AuthModel> getSession();
  Future<void> clearSession();
}
