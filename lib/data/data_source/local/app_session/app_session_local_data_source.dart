import 'package:hyper_supabase/core.dart';

abstract class AppSessionLocalDataSource {
  Future<int> count({int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<AppSession>> getAll({
    int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<AppSession?> get(int id);

  Future<AppSession?> create({
    required int id,
    int? userProfileId,
String? role,
String? email,
DateTime? createdAt,
  });

  Future<void> update({
    required int id,
int? userProfileId,
String? role,
String? email,
DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

   Future<void> createQueue({
    required QueueAction queueAction,
    required AppSession data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();

}
