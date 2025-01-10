// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllAppBluetoothUseCaseImpl implements GetAllAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  GetAllAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<List<AppBluetoothEntity>> call({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      deviceName: deviceName,
      deviceAddress: deviceAddress,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
