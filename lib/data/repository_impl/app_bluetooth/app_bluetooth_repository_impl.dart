// @skip
import 'package:hyper_supabase/core.dart';

class AppBluetoothRepositoryImpl implements AppBluetoothRepository {
  final AppBluetoothLocalDataSource localDataSource;

  AppBluetoothRepositoryImpl({
    required this.localDataSource,
  });

  Future<AppBluetoothEntity?> getSelected() async {
    var model = await localDataSource.getSelected();
    return model?.toEntity();
  }

  Future<void> select(AppBluetoothEntity device) async {
    await localDataSource.select(
      AppBluetooth.fromJson(
        jsonDecode(
          jsonEncode(device.toJson()),
        ),
      ),
    );
  }

  Future<void> deselect() async {
    await localDataSource.deselect();
  }

  Future<void> printImage({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    await localDataSource.printImage(
      deviceAddress: deviceAddress,
      bytes: bytes,
    );
  }

  Future<void> printText({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    await localDataSource.printText(
      deviceAddress: deviceAddress,
      bytes: bytes,
    );
  }

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await localDataSource.count(
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
  }) async {
    final models = await localDataSource.getAll(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      deviceName: deviceName,
      deviceAddress: deviceAddress,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
    return models.toEntityList();
  }

  Future<AppBluetoothEntity?> get(int id) async {
    try {
      final model = await localDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<AppBluetoothEntity?> create({
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAt,
  }) async {
    try {
      final model = await localDataSource.create(
        //@ OFFLINE_MODE_ONLY
        id: -1,
        //:@ OFFLINE_MODE_ONLY
        deviceName: deviceName, deviceAddress: deviceAddress,
        createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    String? deviceName,
    String? deviceAddress,
    DateTime? updatedAt,
  }) async {
    try {
      await localDataSource.update(
        id: id,
        deviceName: deviceName,
        deviceAddress: deviceAddress,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await localDataSource.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> deleteAll() async {
    try {
      await localDataSource.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> syncronize({
    bool forceSyncronize = false,
  }) async {}
}
