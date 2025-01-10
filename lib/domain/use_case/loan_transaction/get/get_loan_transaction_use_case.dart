// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetLoanTransactionUseCase {
  Future<LoanTransactionEntity?> call({required int id});
}
