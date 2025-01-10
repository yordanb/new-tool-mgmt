// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAppBluetoothUseCase {
  Future<AppBluetoothEntity?> call({
    required int id
  });
}
