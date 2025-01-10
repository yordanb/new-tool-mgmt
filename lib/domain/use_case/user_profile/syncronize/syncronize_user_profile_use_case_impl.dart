// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeUserProfileUseCaseImpl implements SyncronizeUserProfileUseCase {
  final UserProfileRepository repository;

  SyncronizeUserProfileUseCaseImpl({
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
