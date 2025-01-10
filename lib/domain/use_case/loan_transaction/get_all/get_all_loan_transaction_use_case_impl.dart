// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllLoanTransactionUseCaseImpl implements GetAllLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  GetAllLoanTransactionUseCaseImpl({
    required this.repository,
  });

  Future<List<LoanTransactionEntity>> call({
    int? id,
    String? idOperatorAndValue,
    String? status,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      status: status,
      userProfileId: userProfileId,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
