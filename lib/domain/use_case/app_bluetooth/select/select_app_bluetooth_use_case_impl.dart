// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SelectAppBluetoothUseCaseImpl implements SelectAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  SelectAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<void> call(AppBluetoothEntity device) async {
    return await repository.select(
      device,
    );
  }
}
