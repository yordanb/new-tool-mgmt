// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateAppBluetoothUseCase {
  Future<void> call({
    required int id,
    String? deviceName,
    String? deviceAddress,
    DateTime? updatedAt,
  });
}
