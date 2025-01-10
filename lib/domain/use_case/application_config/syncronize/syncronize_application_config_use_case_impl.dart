// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeApplicationConfigUseCaseImpl implements SyncronizeApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  SyncronizeApplicationConfigUseCaseImpl({
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
