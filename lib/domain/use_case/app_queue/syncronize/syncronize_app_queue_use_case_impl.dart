// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeAppQueueUseCaseImpl implements SyncronizeAppQueueUseCase {
  final AppQueueRepository repository;

  SyncronizeAppQueueUseCaseImpl({
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
