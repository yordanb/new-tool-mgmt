// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeLoanTransactionUseCaseImpl implements SyncronizeLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  SyncronizeLoanTransactionUseCaseImpl({
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
