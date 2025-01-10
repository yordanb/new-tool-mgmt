// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllAppPrinterUseCaseImpl implements GetAllAppPrinterUseCase {
  final AppPrinterRepository repository;

  GetAllAppPrinterUseCaseImpl({
    required this.repository,
  });

  Future<List<AppPrinterEntity>> call({
    int? id,
    String? idOperatorAndValue,
    String? message,
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
      message: message,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
