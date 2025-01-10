import 'package:hyper_supabase/core.dart';

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
