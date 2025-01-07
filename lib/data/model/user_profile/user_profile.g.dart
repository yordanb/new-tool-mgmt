// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      imageUrl: json['image_url'] as String? ?? null,
      userProfileName: json['user_profile_name'] as String? ?? null,
      gender: json['gender'] as String? ?? null,
      email: json['email'] as String? ?? null,
      mobileNumber: json['mobile_number'] as String? ?? null,
      fcmToken: json['fcm_token'] as String? ?? null,
      password: json['password'] as String? ?? null,
      role: json['role'] as String? ?? null,
      weight: (json['weight'] as num?)?.toDouble() ?? null,
      weightTarget: (json['weight_target'] as num?)?.toDouble() ?? null,
      latitude: (json['latitude'] as num?)?.toDouble() ?? null,
      longitude: (json['longitude'] as num?)?.toDouble() ?? null,
      balance: (json['balance'] as num?)?.toDouble() ?? null,
      bank: json['bank'] as String? ?? null,
      accountNumber: json['account_number'] as String? ?? null,
      accountOwner: json['account_owner'] as String? ?? null,
      isActive: json['is_active'] as bool? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'user_profile_name': instance.userProfileName,
      'gender': instance.gender,
      'email': instance.email,
      'mobile_number': instance.mobileNumber,
      'fcm_token': instance.fcmToken,
      'password': instance.password,
      'role': instance.role,
      'weight': instance.weight,
      'weight_target': instance.weightTarget,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'balance': instance.balance,
      'bank': instance.bank,
      'account_number': instance.accountNumber,
      'account_owner': instance.accountOwner,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
