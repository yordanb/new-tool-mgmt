// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountLoanTransactionUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
