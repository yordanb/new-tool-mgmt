// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllApplicationConfigUseCaseImpl implements DeleteAllApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  DeleteAllApplicationConfigUseCaseImpl({
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
