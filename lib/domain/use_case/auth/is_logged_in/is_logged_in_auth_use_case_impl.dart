// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class IsLoggedInAuthUseCaseImpl implements IsLoggedInAuthUseCase {
  final AuthRepository repository;

  IsLoggedInAuthUseCaseImpl({
    required this.repository,
  });

  Future<bool> call() async {
    return await repository.isLoggedIn();
  }
}
