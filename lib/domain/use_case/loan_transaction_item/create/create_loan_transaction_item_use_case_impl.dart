// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateLoanTransactionItemUseCaseImpl implements CreateLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  CreateLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Future<LoanTransactionItemEntity?> call({
    int? loanTransactionId,
int? toolId,
int? qty,
String? memo,
String? status,
DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        loanTransactionId: loanTransactionId,toolId: toolId,qty: qty,memo: memo,status: status,createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
