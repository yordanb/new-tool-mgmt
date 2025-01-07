// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllToolUseCaseImpl implements GetAllToolUseCase {
  final ToolRepository repository;

  GetAllToolUseCaseImpl({
    required this.repository,
  });
  
  Future<List<ToolEntity>> call({
    int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, name: name, description: description, imageUrl: imageUrl, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
