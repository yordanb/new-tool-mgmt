// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_transaction_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanTransactionItemEntityImpl _$$LoanTransactionItemEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanTransactionItemEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? null,
      loanTransactionId: (json['loan_transaction_id'] as num?)?.toInt() ?? null,
      toolId: (json['tool_id'] as num?)?.toInt() ?? null,
      qty: (json['qty'] as num?)?.toDouble() ?? null,
      memo: json['memo'] as String? ?? null,
      status: json['status'] as String? ?? null,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      loanTransaction: json['loan_transaction'] == null
          ? null
          : LoanTransactionEntity.fromJson(
              json['loan_transaction'] as Map<String, dynamic>),
      tool: json['tool'] == null
          ? null
          : ToolEntity.fromJson(json['tool'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanTransactionItemEntityImplToJson(
        _$LoanTransactionItemEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loan_transaction_id': instance.loanTransactionId,
      'tool_id': instance.toolId,
      'qty': instance.qty,
      'memo': instance.memo,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'loan_transaction': instance.loanTransaction,
      'tool': instance.tool,
    };
