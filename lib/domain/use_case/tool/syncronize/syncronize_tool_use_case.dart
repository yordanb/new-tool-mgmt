// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class SyncronizeToolUseCase {
   Future<void> call({
    bool forceSyncronize = false,
  });
}
