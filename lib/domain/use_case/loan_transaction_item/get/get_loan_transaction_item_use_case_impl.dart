// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetLoanTransactionItemUseCaseImpl implements GetLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  GetLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Future<LoanTransactionItemEntity?> call({
    required int id
  }) async {
    try {
      return await repository.get(id);
    }
    on Exception catch (err) {
      throw Exception(err);
    }
  }
}
