// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateLoanTransactionUseCase {
  Future<void> call({
    required int id,
    String? status,
    int? userProfileId,
    DateTime? updatedAt,
  });
}
