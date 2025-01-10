import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionItemLocalDataSource {
  Future<int> count({int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<LoanTransactionItem>> getAll({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<LoanTransactionItem?> get(int id);

  Future<LoanTransactionItem?> create({
    required int id,
    int? loanTransactionId,
int? toolId,
int? qty,
String? memo,
String? status,
DateTime? createdAt,
  });

  Future<void> update({
    required int id,
int? loanTransactionId,
int? toolId,
int? qty,
String? memo,
String? status,
DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

   Future<void> createQueue({
    required QueueAction queueAction,
    required LoanTransactionItem data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();

}
