// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllAppBluetoothUseCaseImpl implements DeleteAllAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  DeleteAllAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    try {
      await repository.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
