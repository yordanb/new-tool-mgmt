// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountAppSessionUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
