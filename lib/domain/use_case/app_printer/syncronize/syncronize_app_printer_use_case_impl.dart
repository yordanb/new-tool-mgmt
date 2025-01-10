// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeAppPrinterUseCaseImpl implements SyncronizeAppPrinterUseCase {
  final AppPrinterRepository repository;

  SyncronizeAppPrinterUseCaseImpl({
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
