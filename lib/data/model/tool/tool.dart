import 'package:hyper_supabase/core.dart';
part 'tool.freezed.dart';
part 'tool.g.dart';

@unfreezed
class Tool with _$Tool {
  factory Tool({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'name') String? name 
, @Default(null) @JsonKey(name: 'description') String? description 
, @Default(null) @JsonKey(name: 'image_url') String? imageUrl 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _Tool;

  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
}

//@ MODEL_ONLY
extension ToolExtension on Tool {
  ToolEntity toEntity() {
    return ToolEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension ToolListExtension on List<Tool> {
  List<ToolEntity> toEntityList() {
    return this
        .map((model) =>
            ToolEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
