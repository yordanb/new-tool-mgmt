// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetLoanTransactionUseCaseImpl implements GetLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  GetLoanTransactionUseCaseImpl({
    required this.repository,
  });
  
  Future<LoanTransactionEntity?> call({
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
