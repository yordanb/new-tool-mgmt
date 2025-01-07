// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountLoanTransactionItemUseCaseImpl implements CountLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  CountLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Future<int> call({int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    return await repository.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }
}
