// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllAppQueueUseCaseImpl implements DeleteAllAppQueueUseCase {
  final AppQueueRepository repository;

  DeleteAllAppQueueUseCaseImpl({
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
