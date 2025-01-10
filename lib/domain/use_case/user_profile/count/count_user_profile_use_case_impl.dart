// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountUserProfileUseCaseImpl implements CountUserProfileUseCase {
  final UserProfileRepository repository;

  CountUserProfileUseCaseImpl({
    required this.repository,
  });

  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await repository.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      imageUrl: imageUrl,
      userProfileName: userProfileName,
      gender: gender,
      email: email,
      mobileNumber: mobileNumber,
      fcmToken: fcmToken,
      password: password,
      role: role,
      isActive: isActive,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }
}
