import 'package:hyper_supabase/core.dart';

abstract class UserProfileRemoteDataSource {
  Future<int> count({int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<UserProfile>> getAll({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  Future<UserProfile?> get(int id);

  Future<UserProfile?> create({
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

  Future<void> update({
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

  Future<void> delete(int id);

  Future<void> deleteAll();
}
