// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateLoanTransactionItemUseCase {
  Future<void> call({
    required int id,
    int? loanTransactionId,
    int? toolId,
    double? qty,
    String? memo,
    String? status,
    DateTime? updatedAt,
  });
}
