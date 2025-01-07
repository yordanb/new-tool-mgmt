import 'package:hyper_supabase/core.dart';

abstract class RegisterUseCase {
  Future<AuthEntity?> call({
    String? name,
    String? email,
    String? password,
  });
}
