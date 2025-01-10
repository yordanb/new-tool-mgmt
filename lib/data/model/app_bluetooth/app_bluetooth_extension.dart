import 'package:hyper_supabase/core.dart';

extension AppBluetoothExtension on AppBluetooth {
  AppBluetoothEntity toEntity() {
    return AppBluetoothEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppBluetoothListExtension on List<AppBluetooth> {
  List<AppBluetoothEntity> toEntityList() {
    return this
        .map((model) =>
            AppBluetoothEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}