import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';

abstract class AppBluetoothService {
  Future<List<BluetoothDevice>> getDevices();
}
