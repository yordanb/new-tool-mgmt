import 'package:hyper_supabase/core.dart';
part 'loan_transaction_item_entity.freezed.dart';
part 'loan_transaction_item_entity.g.dart';

@unfreezed
class LoanTransactionItemEntity with _$LoanTransactionItemEntity {
  factory LoanTransactionItemEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'loan_transaction_id') int? loanTransactionId 
, @Default(null) @JsonKey(name: 'tool_id') int? toolId 
, @Default(null) @JsonKey(name: 'qty') double? qty 
, @Default(null) @JsonKey(name: 'memo') String? memo 
, @Default(null) @JsonKey(name: 'status') String? status 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'loan_transaction') LoanTransactionEntity? loanTransaction, @JsonKey(name: 'tool') ToolEntity? tool,}) = _LoanTransactionItemEntity;

  factory LoanTransactionItemEntity.fromJson(Map<String, dynamic> json) => _$LoanTransactionItemEntityFromJson(json);
}


