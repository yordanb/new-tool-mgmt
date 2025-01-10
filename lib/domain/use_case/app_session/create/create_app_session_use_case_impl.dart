// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateAppSessionUseCaseImpl implements CreateAppSessionUseCase {
  final AppSessionRepository repository;

  CreateAppSessionUseCaseImpl({
    required this.repository,
  });
  
  Future<AppSessionEntity?> call({
    int? userProfileId,
String? role,
String? email,
DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        userProfileId: userProfileId,role: role,email: email,createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
