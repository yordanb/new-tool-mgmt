// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SnapshotLoanTransactionUseCaseImpl
    implements SnapshotLoanTransactionUseCase {
  final LoanTransactionRepository repository;

  SnapshotLoanTransactionUseCaseImpl({
    required this.repository,
  });

  Stream call({
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
  }) {
    return repository.snapshot(
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
