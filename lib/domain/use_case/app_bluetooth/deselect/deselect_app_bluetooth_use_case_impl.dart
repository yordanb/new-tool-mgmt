// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeselectAppBluetoothUseCaseImpl implements DeselectAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  DeselectAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    return await repository.deselect();
  }
}
