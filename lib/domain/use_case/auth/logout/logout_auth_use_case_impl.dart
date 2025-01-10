// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LogoutAuthUseCaseImpl implements LogoutAuthUseCase {
  final AuthRepository repository;

  LogoutAuthUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    return await repository.logout();
  }
}
