// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureServiceDependencies() async {
  sl.registerLazySingleton<AppBluetoothService>(
    () => AppBluetoothServiceImpl(),
  );

  sl.registerLazySingleton<NotificationService>(
    () => NotificationServiceImpl(),
  );

  sl.registerLazySingleton<PermissionService>(
    () => PermissionServiceImpl(),
  );
}
