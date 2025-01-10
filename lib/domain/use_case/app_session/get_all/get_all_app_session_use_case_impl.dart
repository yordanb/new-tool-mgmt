// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllAppSessionUseCaseImpl implements GetAllAppSessionUseCase {
  final AppSessionRepository repository;

  GetAllAppSessionUseCaseImpl({
    required this.repository,
  });
  
  Future<List<AppSessionEntity>> call({
    int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, role: role, email: email, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
