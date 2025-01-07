import 'package:hyper_supabase/core.dart';
part 'app_session.freezed.dart';
part 'app_session.g.dart';

@unfreezed
class AppSession with _$AppSession {
  factory AppSession({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'role') String? role 
, @Default(null) @JsonKey(name: 'email') String? email 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfile? userProfile,}) = _AppSession;

  factory AppSession.fromJson(Map<String, dynamic> json) => _$AppSessionFromJson(json);
}

//@ MODEL_ONLY
extension AppSessionExtension on AppSession {
  AppSessionEntity toEntity() {
    return AppSessionEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppSessionListExtension on List<AppSession> {
  List<AppSessionEntity> toEntityList() {
    return this
        .map((model) =>
            AppSessionEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
