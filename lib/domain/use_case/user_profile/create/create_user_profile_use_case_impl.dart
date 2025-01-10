// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateUserProfileUseCaseImpl implements CreateUserProfileUseCase {
  final UserProfileRepository repository;

  CreateUserProfileUseCaseImpl({
    required this.repository,
  });

  Future<UserProfileEntity?> call({
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        imageUrl: imageUrl,
        userProfileName: userProfileName,
        gender: gender,
        email: email,
        mobileNumber: mobileNumber,
        fcmToken: fcmToken,
        password: password,
        role: role,
        isActive: isActive,
        createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
