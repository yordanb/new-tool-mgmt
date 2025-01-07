// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanTransactionEntityImpl _$$LoanTransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanTransactionEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      status: json['status'] as String? ?? null,
      userProfileId: (json['user_profile_id'] as num?)?.toInt() ?? null,
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

Map<String, dynamic> _$$LoanTransactionEntityImplToJson(
        _$LoanTransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'user_profile_id': instance.userProfileId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user_profile': instance.userProfile,
    };
