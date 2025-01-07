// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAppSessionUseCase {
  Future<AppSessionEntity?> call({
    required int id
  });
}
