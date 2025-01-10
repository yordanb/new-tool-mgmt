// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateLoanTransactionItemUseCaseImpl
    implements UpdateLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  UpdateLoanTransactionItemUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required int id,
    int? loanTransactionId,
    int? toolId,
    int? qty,
    String? memo,
    String? status,
    DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,
        loanTransactionId: loanTransactionId,
        toolId: toolId,
        qty: qty,
        memo: memo,
        status: status,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
