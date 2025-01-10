// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetToolUseCaseImpl implements GetToolUseCase {
  final ToolRepository repository;

  GetToolUseCaseImpl({
    required this.repository,
  });

  Future<ToolEntity?> call({required int id}) async {
    try {
      return await repository.get(id);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
