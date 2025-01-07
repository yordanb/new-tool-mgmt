// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SnapshotLoanTransactionItemUseCaseImpl implements SnapshotLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  SnapshotLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Stream call({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    return repository.snapshot(
      id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
