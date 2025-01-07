import 'package:hyper_supabase/core.dart';
part 'loan_transaction_entity.freezed.dart';
part 'loan_transaction_entity.g.dart';

@unfreezed
class LoanTransactionEntity with _$LoanTransactionEntity {
  factory LoanTransactionEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'status') String? status 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfileEntity? userProfile,}) = _LoanTransactionEntity;

  factory LoanTransactionEntity.fromJson(Map<String, dynamic> json) => _$LoanTransactionEntityFromJson(json);
}


