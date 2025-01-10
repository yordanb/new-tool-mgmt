// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateAppSessionUseCase {
  Future<AppSessionEntity?> call({
    int? userProfileId,
String? role,
String? email,
DateTime? createdAt,
  });
}
