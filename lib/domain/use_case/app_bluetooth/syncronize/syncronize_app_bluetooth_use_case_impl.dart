// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeAppBluetoothUseCaseImpl
    implements SyncronizeAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  SyncronizeAppBluetoothUseCaseImpl({
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
