// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class SyncronizeLoanTransactionItemUseCase {
   Future<void> call({
    bool forceSyncronize = false,
  });
}
