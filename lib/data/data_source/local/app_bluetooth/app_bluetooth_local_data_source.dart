// @skip
import 'package:hyper_supabase/core.dart';

abstract class AppBluetoothLocalDataSource {
  Future<AppBluetooth?> getSelected();

  Future<void> select(AppBluetooth device);

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

  Future<List<AppBluetooth>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  });

  Future<AppBluetooth?> get(int id);

  Future<AppBluetooth?> create({
    required int id,
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

  Future<void> createQueue({
    required QueueAction queueAction,
    required AppBluetooth data,
  });

  Future<List> getQueuedTasks();

  Future<void> deleteQueuedTask(String id);

  Future<bool> isRunningQueuedTask();

  Future<void> startQueue();

  Future<void> stopQueue();
}
