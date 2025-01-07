import 'package:hyper_supabase/core.dart';
part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@unfreezed
class UserProfile with _$UserProfile {
  factory UserProfile({
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
    }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}

//@ MODEL_ONLY
extension UserProfileExtension on UserProfile {
  UserProfileEntity toEntity() {
    return UserProfileEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension UserProfileListExtension on List<UserProfile> {
  List<UserProfileEntity> toEntityList() {
    return this
        .map((model) =>
            UserProfileEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
