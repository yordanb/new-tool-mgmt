// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllToolUseCaseImpl implements DeleteAllToolUseCase {
  final ToolRepository repository;

  DeleteAllToolUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    try {
      await repository.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
