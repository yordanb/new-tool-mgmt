import 'package:hyper_supabase/core.dart';
part 'app_bluetooth.freezed.dart';
part 'app_bluetooth.g.dart';

@unfreezed
class AppBluetooth with _$AppBluetooth {
  factory AppBluetooth({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'device_name') String? deviceName 
, @Default(null) @JsonKey(name: 'device_address') String? deviceAddress 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _AppBluetooth;

  factory AppBluetooth.fromJson(Map<String, dynamic> json) => _$AppBluetoothFromJson(json);
}

//@ MODEL_ONLY
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
//:@ MODEL_ONLY
