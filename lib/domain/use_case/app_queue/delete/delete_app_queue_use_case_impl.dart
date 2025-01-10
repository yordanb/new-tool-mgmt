// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAppQueueUseCaseImpl implements DeleteAppQueueUseCase {
  final AppQueueRepository repository;

  DeleteAppQueueUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call(int id) async {
    try {
      await repository.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
