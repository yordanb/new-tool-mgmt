import 'package:hyper_supabase/core.dart';

abstract class UserProfileRepository {
  Future<int> count({int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<UserProfileEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  //@ SNAPSHOT
  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
  //:@ SNAPSHOT

  Future<UserProfileEntity?> get(int id);

  Future<UserProfileEntity?> create({
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

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
