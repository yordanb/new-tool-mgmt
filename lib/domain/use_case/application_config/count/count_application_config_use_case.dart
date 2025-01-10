// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountApplicationConfigUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
