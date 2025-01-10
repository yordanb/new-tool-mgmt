// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class SnapshotApplicationConfigUseCase {
  Stream call({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
}
