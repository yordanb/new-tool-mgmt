import 'package:hyper_supabase/core.dart';

abstract class LoginUseCase {
  Future<AuthEntity?> call({
    String? email,
    String? password,
  });
}
