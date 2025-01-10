import 'package:hyper_supabase/core.dart';

abstract class ApplicationConfigLocalDataSource {
  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<List<ApplicationConfig>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<ApplicationConfig?> get(int id);

  Future<ApplicationConfig?> create({
    required int id,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAt,
  });

  Future<void> update({
    required int id,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> createQueue({
    required QueueAction queueAction,
    required ApplicationConfig data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();
}
