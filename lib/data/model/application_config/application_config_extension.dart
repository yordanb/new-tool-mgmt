import 'package:hyper_supabase/core.dart';

extension ApplicationConfigExtension on ApplicationConfig {
  ApplicationConfigEntity toEntity() {
    return ApplicationConfigEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension ApplicationConfigListExtension on List<ApplicationConfig> {
  List<ApplicationConfigEntity> toEntityList() {
    return this
        .map((model) =>
            ApplicationConfigEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
