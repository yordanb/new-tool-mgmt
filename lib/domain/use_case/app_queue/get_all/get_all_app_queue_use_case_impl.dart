// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllAppQueueUseCaseImpl implements GetAllAppQueueUseCase {
  final AppQueueRepository repository;

  GetAllAppQueueUseCaseImpl({
    required this.repository,
  });
  
  Future<List<AppQueueEntity>> call({
    int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? action, String? actionData, String? appMode, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, action: action, actionData: actionData, appMode: appMode, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
