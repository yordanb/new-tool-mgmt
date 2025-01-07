// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllUserProfileUseCaseImpl implements GetAllUserProfileUseCase {
  final UserProfileRepository repository;

  GetAllUserProfileUseCaseImpl({
    required this.repository,
  });
  
  Future<List<UserProfileEntity>> call({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
