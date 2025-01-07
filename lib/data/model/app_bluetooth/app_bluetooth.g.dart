// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bluetooth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppBluetoothImpl _$$AppBluetoothImplFromJson(Map<String, dynamic> json) =>
    _$AppBluetoothImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      deviceName: json['device_name'] as String? ?? null,
      deviceAddress: json['device_address'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AppBluetoothImplToJson(_$AppBluetoothImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_name': instance.deviceName,
      'device_address': instance.deviceAddress,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
