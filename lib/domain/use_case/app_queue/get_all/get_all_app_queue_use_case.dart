// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAllAppQueueUseCase {
  Future<List<AppQueueEntity>> call({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
}
