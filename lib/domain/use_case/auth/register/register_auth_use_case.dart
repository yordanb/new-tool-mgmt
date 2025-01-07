// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class RegisterAuthUseCase {
  Future<AuthEntity?> call({
    String? name,
    String? email,
    String? password,
  });
}
