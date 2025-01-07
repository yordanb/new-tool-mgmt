// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class InitializeAppNotificationUseCaseImpl
    implements InitializeAppNotificationUseCase {
  final AppNotificationRepository repository;

  InitializeAppNotificationUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    return await repository.initialize();
  }
}
