// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SnapshotToolUseCaseImpl implements SnapshotToolUseCase {
  final ToolRepository repository;

  SnapshotToolUseCaseImpl({
    required this.repository,
  });

  Stream call({
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
  }) {
    return repository.snapshot(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      name: name,
      description: description,
      imageUrl: imageUrl,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
