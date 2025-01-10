import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_supabase/core.dart';

enum _NetworkManagerStatus {
  normal,
  online,
  offline,
}

bool get unitTestMode => Platform.environment.containsKey('FLUTTER_TEST');

class NetworkManagerImpl implements NetworkManager {
  _NetworkManagerStatus networkManagerStatus = _NetworkManagerStatus.normal;

  void onlineTest() {
    networkManagerStatus = _NetworkManagerStatus.online;
  }

  void offlineTest() {
    networkManagerStatus = _NetworkManagerStatus.offline;
  }

  Future<bool> isOnline() async {
    var configManager = GetIt.instance<ConfigManager>();
    if (configManager.forceOffline) return false;

    if (unitTestMode) {
      return true;
    }

    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    }
    return false;
  }

  Future<bool> isOffline() async {
    var configManager = GetIt.instance<ConfigManager>();
    if (configManager.forceOffline) return true;
    if (unitTestMode) {
      return false;
    }

    return !(await isOnline());
  }
}
