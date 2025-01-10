// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountAppPrinterUseCaseImpl implements CountAppPrinterUseCase {
  final AppPrinterRepository repository;

  CountAppPrinterUseCaseImpl({
    required this.repository,
  });

  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    String? message,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await repository.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      message: message,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }
}
