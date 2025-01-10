// @skip
import 'package:hyper_supabase/core.dart';

class PrintTextAppBluetoothUseCaseImpl implements PrintTextAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  PrintTextAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    try {
      await repository.printText(
        deviceAddress: deviceAddress,
        bytes: bytes,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
