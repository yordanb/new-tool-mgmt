// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class LoginAuthUseCase {
  Future<AuthEntity?> call({
    String? email,
    String? password,
  });
}
