import 'package:hyper_supabase/core.dart';

abstract class ToolRepository {
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

  Future<List<ToolEntity>> getAll({
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

  //@ SNAPSHOT
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
  //:@ SNAPSHOT

  Future<ToolEntity?> get(int id);

  Future<ToolEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
