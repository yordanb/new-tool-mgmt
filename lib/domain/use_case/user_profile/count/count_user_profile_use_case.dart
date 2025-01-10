// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountUserProfileUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
