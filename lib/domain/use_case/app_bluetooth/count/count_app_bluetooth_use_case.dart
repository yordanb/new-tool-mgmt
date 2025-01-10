// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CountAppBluetoothUseCase {
  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });
}
