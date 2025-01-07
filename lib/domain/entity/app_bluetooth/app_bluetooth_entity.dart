import 'package:hyper_supabase/core.dart';
part 'app_bluetooth_entity.freezed.dart';
part 'app_bluetooth_entity.g.dart';

@unfreezed
class AppBluetoothEntity with _$AppBluetoothEntity {
  factory AppBluetoothEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'device_name') String? deviceName 
, @Default(null) @JsonKey(name: 'device_address') String? deviceAddress 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _AppBluetoothEntity;

  factory AppBluetoothEntity.fromJson(Map<String, dynamic> json) => _$AppBluetoothEntityFromJson(json);
}


