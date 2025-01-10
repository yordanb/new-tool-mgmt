import 'package:hyper_supabase/core.dart';

abstract class AppPrinterRepository {
  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? message,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<List<AppPrinterEntity>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? message,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<AppPrinterEntity?> get(int id);

  Future<AppPrinterEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
