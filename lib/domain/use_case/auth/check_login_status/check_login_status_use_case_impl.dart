import 'package:hyper_supabase/core.dart';

class CheckLoginStatusUseCaseImpl implements CheckLoginStatusUseCase {
  final AuthRepository repository;
  final AppSessionRepository appSessionRepository;

  CheckLoginStatusUseCaseImpl({
    required this.repository,
    required this.appSessionRepository,
  });

  Future<bool> call() async {
    return await repository.isLoggedIn();
  }
}
