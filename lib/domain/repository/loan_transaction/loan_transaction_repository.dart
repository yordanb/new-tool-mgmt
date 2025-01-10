import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionRepository {
  Future<int> count({int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<LoanTransactionEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  //@ SNAPSHOT
  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
  //:@ SNAPSHOT

  Future<LoanTransactionEntity?> get(int id);

  Future<LoanTransactionEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
