import 'package:hyper_supabase/core.dart';

abstract class GetCurrentAppSessionUseCase {
  Future<AppSessionEntity?> call();
}
