// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class SnapshotLoanTransactionItemUseCase {
  Stream call({
    int? id,
    String? idOperatorAndValue,
    int? loanTransactionId,
    String? loanTransactionIdOperatorAndValue,
    int? toolId,
    String? toolIdOperatorAndValue,
    double? qty,
    String? qtyOperatorAndValue,
    String? memo,
    String? status,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
}
