// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeToolUseCaseImpl implements SyncronizeToolUseCase {
  final ToolRepository repository;

  SyncronizeToolUseCaseImpl({
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
