import 'package:permission_handler/permission_handler.dart';
import 'package:hyper_supabase/core.dart';

class PermissionServiceImpl implements PermissionService {
  Future<void> requestPermissons() async {
    // Request permissions
    if (await Permission.notification.request().isGranted) {
      printg("[Permission] Notification granted");
    }
  }
}
