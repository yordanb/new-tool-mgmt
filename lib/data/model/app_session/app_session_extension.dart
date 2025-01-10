import 'package:hyper_supabase/core.dart';

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