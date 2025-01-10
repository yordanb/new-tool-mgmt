// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class LoginAuthUseCaseImpl implements LoginAuthUseCase {
  final AuthRepository repository;

  LoginAuthUseCaseImpl({
    required this.repository,
  });

  Future<AuthEntity?> call({
    String? email,
    String? password,
  }) async {
    return await repository.login(
      email: email,
      password: password,
    );
  }
}
