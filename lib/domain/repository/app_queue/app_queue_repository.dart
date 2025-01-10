import 'package:hyper_supabase/core.dart';

abstract class AppQueueRepository {
  Future<int> count({
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
  });

  Future<List<AppQueueEntity>> getAll({
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

  Future<AppQueueEntity?> get(int id);

  Future<AppQueueEntity?> create({
    int? userProfileId,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAt,
  });

  Future<void> update({
    required int id,
    int? userProfileId,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
