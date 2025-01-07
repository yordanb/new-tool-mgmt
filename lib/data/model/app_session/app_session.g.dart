// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSessionImpl _$$AppSessionImplFromJson(Map<String, dynamic> json) =>
    _$AppSessionImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      userProfileId: (json['user_profile_id'] as num?)?.toInt() ?? null,
      role: json['role'] as String? ?? null,
      email: json['email'] as String? ?? null,
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

Map<String, dynamic> _$$AppSessionImplToJson(_$AppSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_profile_id': instance.userProfileId,
      'role': instance.role,
      'email': instance.email,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user_profile': instance.userProfile,
    };
