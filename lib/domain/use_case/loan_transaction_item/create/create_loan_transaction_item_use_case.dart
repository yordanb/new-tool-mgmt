// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateLoanTransactionItemUseCase {
  Future<LoanTransactionItemEntity?> call({
    int? loanTransactionId,
int? toolId,
double? qty,
String? memo,
String? status,
DateTime? createdAt,
  });
}
