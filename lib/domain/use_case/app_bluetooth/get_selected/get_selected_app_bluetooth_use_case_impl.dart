// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetSelectedAppBluetoothUseCaseImpl
    implements GetSelectedAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  GetSelectedAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<AppBluetoothEntity?> call() async {
    return await repository.getSelected();
  }
}
