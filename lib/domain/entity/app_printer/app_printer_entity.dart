import 'package:hyper_supabase/core.dart';
part 'app_printer_entity.freezed.dart';
part 'app_printer_entity.g.dart';

@unfreezed
class AppPrinterEntity with _$AppPrinterEntity {
  factory AppPrinterEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'message') String? message 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _AppPrinterEntity;

  factory AppPrinterEntity.fromJson(Map<String, dynamic> json) => _$AppPrinterEntityFromJson(json);
}


