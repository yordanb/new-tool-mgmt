import 'package:hyper_supabase/core.dart';

class RegisterUseCaseImpl implements RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCaseImpl({
    required this.repository,
  });

  Future<AuthEntity?> call({
    String? name,
    String? email,
    String? password,
  }) async {
    try {
      final response = await repository.register(
        name: name,
        email: email,
        password: password,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
