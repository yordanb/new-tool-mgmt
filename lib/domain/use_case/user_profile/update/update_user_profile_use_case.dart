// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateUserProfileUseCase {
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
  });
}
