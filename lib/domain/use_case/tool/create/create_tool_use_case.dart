// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateToolUseCase {
  Future<ToolEntity?> call({
    String? name,
    String? description,
    String? imageUrl,
    DateTime? createdAt,
  });
}
