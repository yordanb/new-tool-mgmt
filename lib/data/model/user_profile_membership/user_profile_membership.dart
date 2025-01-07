import 'package:hyper_supabase/core.dart';

part 'user_profile_membership.freezed.dart';
part 'user_profile_membership.g.dart';

@unfreezed
class UserProfileMembership with _$UserProfileMembership {
  factory UserProfileMembership({
    @Default(null) @JsonKey(name: 'id') int? id,
    @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId,
    @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'user_profile') UserProfile? userProfile,
  }) = _UserProfileMembership;

  factory UserProfileMembership.fromJson(Map<String, dynamic> json) =>
      _$UserProfileMembershipFromJson(json);
}

//@ MODEL_ONLY
extension UserProfileMembershipExtension on UserProfileMembership {
  UserProfileMembershipEntity toEntity() {
    return UserProfileMembershipEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension UserProfileMembershipListExtension on List<UserProfileMembership> {
  List<UserProfileMembershipEntity> toEntityList() {
    return this
        .map((model) =>
            UserProfileMembershipEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
