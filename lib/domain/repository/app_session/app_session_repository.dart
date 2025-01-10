import 'package:hyper_supabase/core.dart';

abstract class AppSessionRepository {
  Future<int> count({int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<AppSessionEntity>> getAll({
    int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  

  Future<AppSessionEntity?> get(int id);

  Future<AppSessionEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
