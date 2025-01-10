// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllLoanTransactionUseCaseImpl
    implements DeleteAllLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  DeleteAllLoanTransactionUseCaseImpl({
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
