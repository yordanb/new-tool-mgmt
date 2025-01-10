// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountAppQueueUseCaseImpl implements CountAppQueueUseCase {
  final AppQueueRepository repository;

  CountAppQueueUseCaseImpl({
    required this.repository,
  });

  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await repository.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      userProfileId: userProfileId,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue,
      action: action,
      actionData: actionData,
      appMode: appMode,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }
}
