import 'package:hyper_supabase/core.dart';
part 'app_session_entity.freezed.dart';
part 'app_session_entity.g.dart';

@unfreezed
class AppSessionEntity with _$AppSessionEntity {
  factory AppSessionEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'role') String? role 
, @Default(null) @JsonKey(name: 'email') String? email 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfileEntity? userProfile,}) = _AppSessionEntity;

  factory AppSessionEntity.fromJson(Map<String, dynamic> json) => _$AppSessionEntityFromJson(json);
}


extension AppSessionEntityGetterExtension on AppSessionEntity {
  bool get isAdmin => role == 'Admin';
  bool get isUser => role == 'User';
}