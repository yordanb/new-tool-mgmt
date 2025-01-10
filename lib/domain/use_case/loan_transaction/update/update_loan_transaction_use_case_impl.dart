// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateLoanTransactionUseCaseImpl implements UpdateLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  UpdateLoanTransactionUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required int id,
    String? status,
    int? userProfileId,
    DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,
        status: status,
        userProfileId: userProfileId,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
