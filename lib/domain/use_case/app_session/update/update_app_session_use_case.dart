// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateAppSessionUseCase {
  Future<void> call({
    required int id,
    int? userProfileId,
    String? role,
    String? email,
    DateTime? updatedAt,
  });
}
