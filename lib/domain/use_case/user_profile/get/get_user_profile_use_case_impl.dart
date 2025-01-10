// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetUserProfileUseCaseImpl implements GetUserProfileUseCase {
  final UserProfileRepository repository;

  GetUserProfileUseCaseImpl({
    required this.repository,
  });
  
  Future<UserProfileEntity?> call({
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
