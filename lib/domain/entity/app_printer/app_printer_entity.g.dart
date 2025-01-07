// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_printer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppPrinterEntityImpl _$$AppPrinterEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AppPrinterEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      message: json['message'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AppPrinterEntityImplToJson(
        _$AppPrinterEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
