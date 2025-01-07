// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthEntityImpl _$$AuthEntityImplFromJson(Map<String, dynamic> json) =>
    _$AuthEntityImpl(
      id: json['id'] as String? ?? null,
      userProfileId: (json['user_profile_id'] as num?)?.toInt() ?? null,
      name: json['name'] as String? ?? null,
      email: json['email'] as String? ?? null,
      imageUrl: json['image_url'] as String? ?? null,
      accessToken: json['access_token'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AuthEntityImplToJson(_$AuthEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_profile_id': instance.userProfileId,
      'name': instance.name,
      'email': instance.email,
      'image_url': instance.imageUrl,
      'access_token': instance.accessToken,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
