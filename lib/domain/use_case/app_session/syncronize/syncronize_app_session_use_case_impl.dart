// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeAppSessionUseCaseImpl implements SyncronizeAppSessionUseCase {
  final AppSessionRepository repository;

  SyncronizeAppSessionUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    bool forceSyncronize = false,
  }) async {
    await repository.syncronize(
      forceSyncronize: forceSyncronize,
    );
  }
}
