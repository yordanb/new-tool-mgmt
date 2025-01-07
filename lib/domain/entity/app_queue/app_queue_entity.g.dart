// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_queue_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppQueueEntityImpl _$$AppQueueEntityImplFromJson(Map<String, dynamic> json) =>
    _$AppQueueEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      userProfileId: (json['user_profile_id'] as num?)?.toInt() ?? null,
      action: json['action'] as String? ?? null,
      actionData: json['action_data'] as String? ?? null,
      appMode: json['app_mode'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      userProfile: json['user_profile'] == null
          ? null
          : UserProfileEntity.fromJson(
              json['user_profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppQueueEntityImplToJson(
        _$AppQueueEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_profile_id': instance.userProfileId,
      'action': instance.action,
      'action_data': instance.actionData,
      'app_mode': instance.appMode,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user_profile': instance.userProfile,
    };
