// @skip
// ignore: unused_import
import 'dart:typed_data';

abstract class PrintImageAppBluetoothUseCase {
  Future<void> call({
    required String deviceAddress,
    required Uint8List bytes,
  });
}
