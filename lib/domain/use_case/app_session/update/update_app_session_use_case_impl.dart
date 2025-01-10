// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateAppSessionUseCaseImpl implements UpdateAppSessionUseCase {
  final AppSessionRepository repository;

  UpdateAppSessionUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required int id,
    int? userProfileId,
    String? role,
    String? email,
    DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,
        userProfileId: userProfileId,
        role: role,
        email: email,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
