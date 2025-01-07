// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_message_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationMessageEntityImpl _$$NotificationMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationMessageEntityImpl(
      title: json['title'] as String? ?? null,
      body: json['body'] as String? ?? null,
    );

Map<String, dynamic> _$$NotificationMessageEntityImplToJson(
        _$NotificationMessageEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
