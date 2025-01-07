// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateUserProfileUseCaseImpl implements UpdateUserProfileUseCase {
  final UserProfileRepository repository;

  UpdateUserProfileUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    required int id,
String? imageUrl,
String? userProfileName,
String? gender,
String? email,
String? mobileNumber,
String? fcmToken,
String? password,
String? role,
bool? isActive,
DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,imageUrl: imageUrl,userProfileName: userProfileName,gender: gender,email: email,mobileNumber: mobileNumber,fcmToken: fcmToken,password: password,role: role,isActive: isActive,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
