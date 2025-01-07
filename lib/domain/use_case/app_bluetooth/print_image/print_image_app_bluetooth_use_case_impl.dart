// @skip
// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class PrintImageAppBluetoothUseCaseImpl
    implements PrintImageAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  PrintImageAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<void> call({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    try {
      await repository.printImage(
        deviceAddress: deviceAddress,
        bytes: bytes,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
