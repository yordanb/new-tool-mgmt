// @skip
import 'package:hyper_supabase/core.dart';

abstract class AppBluetoothRepository {
  Future<AppBluetoothEntity?> getSelected();
  Future<void> select(AppBluetoothEntity device);
  Future<void> deselect();
  Future<void> printImage({
    required String deviceAddress,
    required Uint8List bytes,
  });

  Future<void> printText({
    required String deviceAddress,
    required Uint8List bytes,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<List<AppBluetoothEntity>> getAll({
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
  });

  Future<AppBluetoothEntity?> get(int id);

  Future<AppBluetoothEntity?> create({
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAt,
  });

  Future<void> update({
    required int id,
    String? deviceName,
    String? deviceAddress,
    DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
