import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionItemRepository {
  Future<int> count({int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<LoanTransactionItemEntity>> getAll({
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

  //@ SNAPSHOT
  Stream snapshot({
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
  //:@ SNAPSHOT

  Future<LoanTransactionItemEntity?> get(int id);

  Future<LoanTransactionItemEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
