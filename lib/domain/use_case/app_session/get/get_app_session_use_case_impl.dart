// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAppSessionUseCaseImpl implements GetAppSessionUseCase {
  final AppSessionRepository repository;

  GetAppSessionUseCaseImpl({
    required this.repository,
  });
  
  Future<AppSessionEntity?> call({
    required int id
  }) async {
    try {
      return await repository.get(id);
    }
    on Exception catch (err) {
      throw Exception(err);
    }
  }
}
