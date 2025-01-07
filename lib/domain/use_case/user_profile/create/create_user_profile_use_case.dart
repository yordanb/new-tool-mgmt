// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateUserProfileUseCase {
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
  });
}
