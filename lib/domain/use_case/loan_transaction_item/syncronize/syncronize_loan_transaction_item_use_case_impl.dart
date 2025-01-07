// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SyncronizeLoanTransactionItemUseCaseImpl implements SyncronizeLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  SyncronizeLoanTransactionItemUseCaseImpl({
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
