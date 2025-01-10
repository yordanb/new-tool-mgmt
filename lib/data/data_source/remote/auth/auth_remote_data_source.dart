import 'package:hyper_supabase/core.dart';

abstract class AuthRemoteDataSource {
  Future<bool> isLoggedIn();

  Future<AuthModel?> login({
    required String email,
    required String password,
  });

  Future<AuthModel?> register({
    required String name,
    required String email,
    required String password,
  });

  Future<bool> resetPassword({
    required String email,
  });

  Future<bool> logout();
}
