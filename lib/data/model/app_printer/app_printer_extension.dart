import 'package:hyper_supabase/core.dart';

extension AppPrinterExtension on AppPrinter {
  AppPrinterEntity toEntity() {
    return AppPrinterEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppPrinterListExtension on List<AppPrinter> {
  List<AppPrinterEntity> toEntityList() {
    return this
        .map((model) => AppPrinterEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
