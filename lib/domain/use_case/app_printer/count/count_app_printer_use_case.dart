// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountAppPrinterUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, String? message, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
