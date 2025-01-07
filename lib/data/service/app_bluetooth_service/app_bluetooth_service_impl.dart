import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer.dart';
import 'package:hyper_supabase/core/util/log/log.dart';
import 'package:hyper_supabase/data/service/app_bluetooth_service/app_bluetooth_service.dart';

class AppBluetoothServiceImpl implements AppBluetoothService {
  Future<List<BluetoothDevice>> getDevices() async {
    List<BluetoothDevice> devices = [];
    var subscription = FlutterBluetoothPrinter.discovery.listen((event) {
      print(event); // Proses event

      if (event is BluetoothDisabledState) {
        printr("Bluetooth is disabled.");
        devices = [];
        return;
      }

      devices = (event as DiscoveryResult).devices;
    });

    // Batalkan subscription setelah 5 detik
    await Future.delayed(const Duration(seconds: 2));
    await subscription.cancel(); // Membatalkan stream

    print("Subscription canceled.");
    print(devices.length);
    return devices;
  }
}
