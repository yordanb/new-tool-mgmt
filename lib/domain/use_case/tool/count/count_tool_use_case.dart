// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountToolUseCase {
   Future<int> call({int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});
}
