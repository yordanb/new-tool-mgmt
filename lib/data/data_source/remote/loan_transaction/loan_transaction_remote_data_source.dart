import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionRemoteDataSource {
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

  Stream snapshot({
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
}
