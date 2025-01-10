// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateAppQueueUseCaseImpl implements CreateAppQueueUseCase {
  final AppQueueRepository repository;

  CreateAppQueueUseCaseImpl({
    required this.repository,
  });
  
  Future<AppQueueEntity?> call({
    int? userProfileId,
String? action,
String? actionData,
String? appMode,
DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        userProfileId: userProfileId,action: action,actionData: actionData,appMode: appMode,createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
