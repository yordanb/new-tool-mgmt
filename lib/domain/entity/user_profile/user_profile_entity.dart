import 'package:hyper_supabase/core.dart';
part 'user_profile_entity.freezed.dart';
part 'user_profile_entity.g.dart';

@unfreezed
class UserProfileEntity with _$UserProfileEntity {
  factory UserProfileEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'image_url') String? imageUrl 
, @Default(null) @JsonKey(name: 'user_profile_name') String? userProfileName 
, @Default(null) @JsonKey(name: 'gender') String? gender 
, @Default(null) @JsonKey(name: 'email') String? email 
, @Default(null) @JsonKey(name: 'mobile_number') String? mobileNumber 
, @Default(null) @JsonKey(name: 'fcm_token') String? fcmToken 
, @Default(null) @JsonKey(name: 'password') String? password 
, @Default(null) @JsonKey(name: 'role') String? role 
, @Default(null) @JsonKey(name: 'is_active') bool? isActive 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _UserProfileEntity;

  factory UserProfileEntity.fromJson(Map<String, dynamic> json) => _$UserProfileEntityFromJson(json);
}


