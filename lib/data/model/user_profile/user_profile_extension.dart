import 'package:hyper_supabase/core.dart';

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