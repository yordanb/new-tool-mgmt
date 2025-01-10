// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateAppQueueUseCase {
  Future<void> call({
    required int id,
int? userProfileId,
String? action,
String? actionData,
String? appMode,
DateTime? updatedAt,
  });
}
