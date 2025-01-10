import 'package:hyper_supabase/core.dart';

abstract class AuthRepository {
  Future<bool> isLoggedIn();
  Future<AuthEntity?> login({
    String? email,
    String? password,
  });

  Future<AuthEntity?> register({
    String? name,
    String? email,
    String? password,
  });

  Future<void> logout();
}
