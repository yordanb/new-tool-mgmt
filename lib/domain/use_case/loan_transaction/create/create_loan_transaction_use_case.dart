// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateLoanTransactionUseCase {
  Future<LoanTransactionEntity?> call({
    String? status,
    int? userProfileId,
    DateTime? createdAt,
  });
}
