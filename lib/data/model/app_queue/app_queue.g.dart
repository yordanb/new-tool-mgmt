// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppQueueImpl _$$AppQueueImplFromJson(Map<String, dynamic> json) =>
    _$AppQueueImpl(
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
          : UserProfile.fromJson(json['user_profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppQueueImplToJson(_$AppQueueImpl instance) =>
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
