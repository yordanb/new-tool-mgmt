// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class SyncronizeLoanTransactionUseCase {
   Future<void> call({
    bool forceSyncronize = false,
  });
}
