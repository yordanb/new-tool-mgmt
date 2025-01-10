// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateToolUseCase {
  Future<void> call({
    required int id,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? updatedAt,
  });
}
