import 'package:hyper_supabase/core.dart';

abstract class ToolRemoteDataSource {
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

  Stream snapshot({
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
}
