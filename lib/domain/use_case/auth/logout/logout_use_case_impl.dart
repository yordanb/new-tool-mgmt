import 'package:hyper_supabase/core.dart';

class LogoutUseCaseImpl implements LogoutUseCase {
  final AuthRepository repository;
  final AppSessionRepository appSessionRepository;

  LogoutUseCaseImpl({
    required this.repository,
    required this.appSessionRepository,
  });

  Future<AuthEntity?> call() async {
    try {
      await repository.logout();
      await appSessionRepository.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
    return null;
  }
}
