// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAppQueueUseCaseImpl implements GetAppQueueUseCase {
  final AppQueueRepository repository;

  GetAppQueueUseCaseImpl({
    required this.repository,
  });
  
  Future<AppQueueEntity?> call({
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
