// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAppBluetoothUseCaseImpl implements GetAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  GetAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<AppBluetoothEntity?> call({required int id}) async {
    try {
      return await repository.get(id);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
