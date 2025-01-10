// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllAppSessionUseCaseImpl implements DeleteAllAppSessionUseCase {
  final AppSessionRepository repository;

  DeleteAllAppSessionUseCaseImpl({
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
