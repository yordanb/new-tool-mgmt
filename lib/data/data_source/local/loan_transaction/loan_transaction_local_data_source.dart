import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionLocalDataSource {
  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? status,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<List<LoanTransaction>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? status,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<LoanTransaction?> get(int id);

  Future<LoanTransaction?> create({
    required int id,
    String? status,
    int? userProfileId,
    DateTime? createdAt,
  });

  Future<void> update({
    required int id,
    String? status,
    int? userProfileId,
    DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> createQueue({
    required QueueAction queueAction,
    required LoanTransaction data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();
}
