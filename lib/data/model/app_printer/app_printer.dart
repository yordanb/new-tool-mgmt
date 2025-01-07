import 'package:hyper_supabase/core.dart';
part 'app_printer.freezed.dart';
part 'app_printer.g.dart';

@unfreezed
class AppPrinter with _$AppPrinter {
  factory AppPrinter({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'message') String? message 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _AppPrinter;

  factory AppPrinter.fromJson(Map<String, dynamic> json) => _$AppPrinterFromJson(json);
}

//@ MODEL_ONLY
extension AppPrinterExtension on AppPrinter {
  AppPrinterEntity toEntity() {
    return AppPrinterEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppPrinterListExtension on List<AppPrinter> {
  List<AppPrinterEntity> toEntityList() {
    return this
        .map((model) =>
            AppPrinterEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
