// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateAppQueueUseCase {
  Future<AppQueueEntity?> call({
    int? userProfileId,
String? action,
String? actionData,
String? appMode,
DateTime? createdAt,
  });
}
