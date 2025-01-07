import 'package:hyper_supabase/core.dart';
part 'loan_transaction.freezed.dart';
part 'loan_transaction.g.dart';

@unfreezed
class LoanTransaction with _$LoanTransaction {
  factory LoanTransaction({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'status') String? status 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfile? userProfile,}) = _LoanTransaction;

  factory LoanTransaction.fromJson(Map<String, dynamic> json) => _$LoanTransactionFromJson(json);
}

//@ MODEL_ONLY
extension LoanTransactionExtension on LoanTransaction {
  LoanTransactionEntity toEntity() {
    return LoanTransactionEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension LoanTransactionListExtension on List<LoanTransaction> {
  List<LoanTransactionEntity> toEntityList() {
    return this
        .map((model) =>
            LoanTransactionEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
