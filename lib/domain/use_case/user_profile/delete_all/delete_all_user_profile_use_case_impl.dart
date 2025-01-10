// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllUserProfileUseCaseImpl implements DeleteAllUserProfileUseCase {
  final UserProfileRepository repository;

  DeleteAllUserProfileUseCaseImpl({
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
