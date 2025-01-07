import 'package:hyper_supabase/core.dart';
part 'tool_entity.freezed.dart';
part 'tool_entity.g.dart';

@unfreezed
class ToolEntity with _$ToolEntity {
  factory ToolEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'name') String? name 
, @Default(null) @JsonKey(name: 'description') String? description 
, @Default(null) @JsonKey(name: 'image_url') String? imageUrl 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _ToolEntity;

  factory ToolEntity.fromJson(Map<String, dynamic> json) => _$ToolEntityFromJson(json);
}


