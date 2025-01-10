// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountAppBluetoothUseCaseImpl implements CountAppBluetoothUseCase {
  final AppBluetoothRepository repository;

  CountAppBluetoothUseCaseImpl({
    required this.repository,
  });

  Future<int> call({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await repository.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      deviceName: deviceName,
      deviceAddress: deviceAddress,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }
}
