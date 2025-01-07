// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class RegisterAuthUseCaseImpl implements RegisterAuthUseCase {
  final AuthRepository repository;

  RegisterAuthUseCaseImpl({
    required this.repository,
  });

  Future<AuthEntity?> call({
    String? name,
    String? email,
    String? password,
  }) async {
    return await repository.register(
      name: name,
      email: email,
      password: password,
    );
  }
}
