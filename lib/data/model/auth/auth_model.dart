import 'package:hyper_supabase/core.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@unfreezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    @Default(null) @JsonKey(name: 'id') String? id,
    @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId,
    @Default(null) @JsonKey(name: 'name') String? name,
    @Default(null) @JsonKey(name: 'email') String? email,
    @Default(null) @JsonKey(name: 'image_url') String? imageUrl,
    @Default(null) @JsonKey(name: 'access_token') String? accessToken,
    @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
