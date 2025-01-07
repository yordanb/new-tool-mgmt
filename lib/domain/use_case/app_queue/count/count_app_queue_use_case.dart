// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountAppQueueUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? action, String? actionData, String? appMode, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
