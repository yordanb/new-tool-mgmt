// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAllAppPrinterUseCase {
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
  });
}
