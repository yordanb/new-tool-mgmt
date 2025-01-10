// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateToolUseCaseImpl implements UpdateToolUseCase {
  final ToolRepository repository;

  UpdateToolUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required int id,
    String? name,
    String? description,
    String? imageUrl,
    DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,
        name: name,
        description: description,
        imageUrl: imageUrl,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
