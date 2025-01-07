// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateAppBluetoothUseCase {
  Future<AppBluetoothEntity?> call({
    String? deviceName,
String? deviceAddress,
DateTime? createdAt,
  });
}
