// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllLoanTransactionItemUseCaseImpl implements GetAllLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  GetAllLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Future<List<LoanTransactionItemEntity>> call({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
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
