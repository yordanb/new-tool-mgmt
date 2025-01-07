import 'package:hyper_supabase/core.dart';

abstract class LogoutUseCase {
  Future<AuthEntity?> call();
}
