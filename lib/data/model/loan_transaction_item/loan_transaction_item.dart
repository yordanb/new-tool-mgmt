import 'package:hyper_supabase/core.dart';
part 'loan_transaction_item.freezed.dart';
part 'loan_transaction_item.g.dart';

@unfreezed
class LoanTransactionItem with _$LoanTransactionItem {
  factory LoanTransactionItem({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'loan_transaction_id') int? loanTransactionId 
, @Default(null) @JsonKey(name: 'tool_id') int? toolId 
, @Default(null) @JsonKey(name: 'qty') double? qty 
, @Default(null) @JsonKey(name: 'memo') String? memo 
, @Default(null) @JsonKey(name: 'status') String? status 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'loan_transaction') LoanTransaction? loanTransaction, @JsonKey(name: 'tool') Tool? tool,}) = _LoanTransactionItem;

  factory LoanTransactionItem.fromJson(Map<String, dynamic> json) => _$LoanTransactionItemFromJson(json);
}

//@ MODEL_ONLY
extension LoanTransactionItemExtension on LoanTransactionItem {
  LoanTransactionItemEntity toEntity() {
    return LoanTransactionItemEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension LoanTransactionItemListExtension on List<LoanTransactionItem> {
  List<LoanTransactionItemEntity> toEntityList() {
    return this
        .map((model) =>
            LoanTransactionItemEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
