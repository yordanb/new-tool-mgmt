// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_config_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationConfigEntityImpl _$$ApplicationConfigEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationConfigEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      appMode: json['app_mode'] as String? ?? null,
      companyName: json['company_name'] as String? ?? null,
      address: json['address'] as String? ?? null,
      phoneNumber: json['phone_number'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ApplicationConfigEntityImplToJson(
        _$ApplicationConfigEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_mode': instance.appMode,
      'company_name': instance.companyName,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
