// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureLocalDataSourceDependencies() async {
  sl.registerLazySingleton<ApplicationConfigLocalDataSource>(
    () => ApplicationConfigLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<AppBluetoothLocalDataSource>(
    () => AppBluetoothLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<AppPrinterLocalDataSource>(
    () => AppPrinterLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<AppQueueLocalDataSource>(
    () => AppQueueLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<AppSessionLocalDataSource>(
    () => AppSessionLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionLocalDataSource>(
    () => LoanTransactionLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionItemLocalDataSource>(
    () => LoanTransactionItemLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<ToolLocalDataSource>(
    () => ToolLocalDataSourceImpl(
      prefs: sl(),
    ),
  );

  sl.registerLazySingleton<UserProfileLocalDataSource>(
    () => UserProfileLocalDataSourceImpl(
      prefs: sl(),
    ),
  );
}
