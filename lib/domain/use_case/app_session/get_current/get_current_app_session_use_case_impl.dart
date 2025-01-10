import 'package:hyper_supabase/core.dart';

class GetCurrentAppSessionUseCaseImpl implements GetCurrentAppSessionUseCase {
  final AppSessionRepository repository;

  GetCurrentAppSessionUseCaseImpl({
    required this.repository,
  });

  Future<AppSessionEntity?> call() async {
    try {
      final items = await repository.getAll();
      return items.isEmpty ? null : items.first;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
