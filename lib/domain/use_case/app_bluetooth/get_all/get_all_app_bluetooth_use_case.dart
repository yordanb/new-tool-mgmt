// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAllAppBluetoothUseCase {
  Future<List<AppBluetoothEntity>> call({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
}
