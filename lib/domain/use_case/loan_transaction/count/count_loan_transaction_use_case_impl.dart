// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountLoanTransactionUseCaseImpl implements CountLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  CountLoanTransactionUseCaseImpl({
    required this.repository,
  });

  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    String? status,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await repository.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      status: status,
      userProfileId: userProfileId,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }
}
