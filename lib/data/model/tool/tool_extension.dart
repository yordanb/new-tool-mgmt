import 'package:hyper_supabase/core.dart';

extension ToolExtension on Tool {
  ToolEntity toEntity() {
    return ToolEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension ToolListExtension on List<Tool> {
  List<ToolEntity> toEntityList() {
    return this
        .map((model) => ToolEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
