// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteLoanTransactionUseCaseImpl implements DeleteLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  DeleteLoanTransactionUseCaseImpl({
    required this.repository,
  });

  Future<void> call(int id) async {
    try {
      await repository.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
