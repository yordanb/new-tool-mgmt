import 'package:hyper_supabase/core.dart';

abstract class AppQueueLocalDataSource {
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

  Future<List<AppQueue>> getAll({
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

  Future<AppQueue?> get(int id);

  Future<AppQueue?> create({
    required int id,
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

  Future<void> createQueue({
    required QueueAction queueAction,
    required AppQueue data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();
}
