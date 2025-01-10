// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAllLoanTransactionItemUseCase {
   Future<List<LoanTransactionItemEntity>> call({
      int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
      int limit = 10,
      int page = 1,
   });
}
