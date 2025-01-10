// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAllToolUseCase {
  Future<List<ToolEntity>> call({
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
}
