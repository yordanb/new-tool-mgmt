// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetLoanTransactionItemUseCase {
  Future<LoanTransactionItemEntity?> call({required int id});
}
