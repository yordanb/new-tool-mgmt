// @skip
import 'dart:async';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';
import 'package:hyper_supabase/core.dart';

// anti override
class AppBluetoothLocalDataSourceImpl implements AppBluetoothLocalDataSource {
  final SharedPreferences prefs;

  AppBluetoothLocalDataSourceImpl({
    required this.prefs,
  });

  // SELECTION METHODS
  Future<AppBluetooth?> getSelected() async {
    final json = await prefs.getString('app_bluetooth_selected_device');
    if (json == null) {
      return null;
    }
    return AppBluetooth.fromJson(jsonDecode(json));
  }

  Future<void> select(AppBluetooth device) async {
    await prefs.setString(
      'app_bluetooth_selected_device',
      jsonEncode(
        device.toJson(),
      ),
    );
  }

  Future<void> deselect() async {
    await prefs.remove('app_bluetooth_selected_device');
  }

  Future<void> printImage({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    await FlutterBluetoothPrinter.connect(deviceAddress);
    await FlutterBluetoothPrinter.printImageSingle(
      imageBytes: bytes,
      imageHeight: 100,
      imageWidth: 100,
      address: deviceAddress,
      keepConnected: true,
    );
  }

  Future<void> printText({
    required String deviceAddress,
    required Uint8List bytes,
  }) async {
    await FlutterBluetoothPrinter.connect(deviceAddress);
    await FlutterBluetoothPrinter.printBytes(
      address: deviceAddress,
      keepConnected: true,
      data: bytes,
    );
  }
  // END SELECTION METHODS

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
    final jsonList = await prefs.getString('app_bluetooth') ?? "[]";
    final values = jsonDecode(jsonList);
    return values.length;
  }

  Future<List<AppBluetooth>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    //CUSTOM LOGIC
    await prefs.setString('app_bluetooth', "[]");
    List<BluetoothDevice> devices =
        await AppBluetoothServiceImpl().getDevices();
    var models = [];
    for (var device in devices) {
      final newModel = AppBluetooth(
        id: id,
        deviceName: device.name,
        deviceAddress: device.address,
        createdAt: DateTime.now(),
      );
      models.add(newModel);
    }
    await prefs.setString('app_bluetooth', jsonEncode(models));
    //--------------------------------
    final jsonList = await prefs.getString('app_bluetooth') ?? "[]";
    final values = jsonDecode(jsonList);

    List<AppBluetooth> modelValues = [];
    for (var value in values) {
      modelValues.add(AppBluetooth.fromJson(value));
    }
    return modelValues;
  }

  Future<AppBluetooth?> get(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return modelValues[index];
  }

  Future<AppBluetooth?> create({
    int? id,
    String? deviceName,
    String? deviceAddress,
    DateTime? createdAt,
  }) async {
    final modelValues = await getAll();
    final newModel = AppBluetooth(
      id: id,
      deviceName: deviceName,
      deviceAddress: deviceAddress,
      createdAt: createdAt ?? DateTime.now(),
    );
    modelValues.add(newModel);

    await prefs.setString('app_bluetooth', modelValues.toJsonEncoded());
    return newModel;
  }

  Future<void> update({
    required int id,
    String? deviceName,
    String? deviceAddress,
    DateTime? updatedAt,
  }) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    modelValues[index] = modelValues[index].copyWith(
      id: id,
      deviceName: deviceName,
      deviceAddress: deviceAddress,
      updatedAt: DateTime.now(),
    );

    await prefs.setString('app_bluetooth', modelValues.toJsonEncoded());
  }

  Future<void> delete(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return;
    }

    modelValues.removeAt(index);
    await prefs.setString('app_bluetooth', modelValues.toJsonEncoded());
  }

  Future<void> deleteAll() async {
    await prefs.setString('app_bluetooth', jsonEncode([]));
  }

  Future<void> createQueue({
    required QueueAction queueAction,
    required AppBluetooth data,
  }) async {
    printg("createQueue: $queueAction");

    String jsonList =
        await prefs.getString('app_bluetooth_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.add({
      "id": const Uuid().v4(),
      "action": queueAction.toString().split(".").last,
      "data": data.toJson(),
      "created_at": DateTime.now().toString(),
    });
    await prefs.setString('app_bluetooth_queued_tasks', jsonEncode(values));
  }

  Future<List> getQueuedTasks() async {
    String jsonList =
        await prefs.getString('app_bluetooth_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    return values;
  }

  Future<void> deleteQueuedTask(String id) async {
    String jsonList =
        await prefs.getString('app_bluetooth_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.removeWhere((element) => element['id'] == id);
    await prefs.setString('app_bluetooth_queued_tasks', jsonEncode(values));
  }

  Future<bool> isRunningQueuedTask() async {
    bool isRunning =
        await prefs.getBool('app_bluetooth_queued_tasks_running') ?? false;
    return isRunning;
  }

  Future<void> startQueue() async {
    await prefs.setBool('app_bluetooth_queued_tasks_running', true);
  }

  Future<void> stopQueue() async {
    await prefs.setBool('app_bluetooth_queued_tasks_running', false);
  }
}
