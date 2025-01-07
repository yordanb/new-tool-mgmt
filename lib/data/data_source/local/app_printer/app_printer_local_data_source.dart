import 'package:hyper_supabase/core.dart';

abstract class AppPrinterLocalDataSource {
  Future<int> count({int? id,
String? idOperatorAndValue, String? message, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<AppPrinter>> getAll({
    int? id,
String? idOperatorAndValue, String? message, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<AppPrinter?> get(int id);

  Future<AppPrinter?> create({
    required int id,
    String? message,
DateTime? createdAt,
  });

  Future<void> update({
    required int id,
String? message,
DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

   Future<void> createQueue({
    required QueueAction queueAction,
    required AppPrinter data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();

}
