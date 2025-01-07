import 'package:hyper_supabase/core.dart';

part 'user_profile_membership_entity.freezed.dart';
part 'user_profile_membership_entity.g.dart';

@unfreezed
class UserProfileMembershipEntity with _$UserProfileMembershipEntity {
  factory UserProfileMembershipEntity({
    @Default(null) @JsonKey(name: 'id') int? id,
    @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId,
    @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'user_profile') UserProfileEntity? userProfile,
  }) = _UserProfileMembershipEntity;

  factory UserProfileMembershipEntity.fromJson(Map<String, dynamic> json) =>
      _$UserProfileMembershipEntityFromJson(json);
}
