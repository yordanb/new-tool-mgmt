import 'package:hyper_supabase/core.dart';

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
