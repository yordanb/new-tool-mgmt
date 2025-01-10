import 'package:hyper_supabase/core.dart';

abstract class ToolLocalDataSource {
  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<List<Tool>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<Tool?> get(int id);

  Future<Tool?> create({
    required int id,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? createdAt,
  });

  Future<void> update({
    required int id,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> createQueue({
    required QueueAction queueAction,
    required Tool data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();
}
