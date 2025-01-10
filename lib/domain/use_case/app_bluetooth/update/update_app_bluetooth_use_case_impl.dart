// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateAppBluetoothUseCaseImpl implements UpdateAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  UpdateAppBluetoothUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    required int id,
String? deviceName,
String? deviceAddress,
DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,deviceName: deviceName,deviceAddress: deviceAddress,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
