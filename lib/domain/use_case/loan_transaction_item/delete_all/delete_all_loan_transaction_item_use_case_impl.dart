// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllLoanTransactionItemUseCaseImpl implements DeleteAllLoanTransactionItemUseCase {
  final LoanTransactionItemRepository repository;

  DeleteAllLoanTransactionItemUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call() async {
    try {
      await repository.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
