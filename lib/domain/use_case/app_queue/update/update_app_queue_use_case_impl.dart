// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateAppQueueUseCaseImpl implements UpdateAppQueueUseCase {
  final AppQueueRepository repository;

  UpdateAppQueueUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    required int id,
int? userProfileId,
String? action,
String? actionData,
String? appMode,
DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,userProfileId: userProfileId,action: action,actionData: actionData,appMode: appMode,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
