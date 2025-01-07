// @skip
import 'dart:typed_data';

abstract class PrintTextAppBluetoothUseCase {
  Future<void> call({
    required String deviceAddress,
    required Uint8List bytes,
  });
}
