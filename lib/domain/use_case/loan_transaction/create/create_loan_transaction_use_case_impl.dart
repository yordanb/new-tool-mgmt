// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateLoanTransactionUseCaseImpl implements CreateLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  CreateLoanTransactionUseCaseImpl({
    required this.repository,
  });
  
  Future<LoanTransactionEntity?> call({
    String? status,
int? userProfileId,
DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        status: status,userProfileId: userProfileId,createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
