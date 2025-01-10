// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateToolUseCaseImpl implements CreateToolUseCase {
  final ToolRepository repository;

  CreateToolUseCaseImpl({
    required this.repository,
  });

  Future<ToolEntity?> call({
    String? name,
    String? description,
    String? imageUrl,
    DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        name: name,
        description: description,
        imageUrl: imageUrl,
        createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
