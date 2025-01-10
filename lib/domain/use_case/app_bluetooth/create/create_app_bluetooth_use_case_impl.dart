// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateAppBluetoothUseCaseImpl implements CreateAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  CreateAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<AppBluetoothEntity?> call({
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        deviceName: deviceName,
        deviceAddress: deviceAddress,
        createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
