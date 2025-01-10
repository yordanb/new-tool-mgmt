// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureRepositoryDependencies() async {
      
  sl.registerLazySingleton<ApplicationConfigRepository>(
    () => ApplicationConfigRepositoryImpl(
    remoteDataSource: sl(),
localDataSource: sl(),
networkManager: sl(),
    ),
  );

  sl.registerLazySingleton<AppBluetoothRepository>(
    () => AppBluetoothRepositoryImpl(
    localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<AppNotificationRepository>(
    () => AppNotificationRepositoryImpl(
    notificationService: sl(),
    ),
  );

  sl.registerLazySingleton<AppPrinterRepository>(
    () => AppPrinterRepositoryImpl(
    localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<AppQueueRepository>(
    () => AppQueueRepositoryImpl(
    localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<AppSessionRepository>(
    () => AppSessionRepositoryImpl(
    localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
    authLocalDataSource: sl(),
remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionRepository>(
    () => LoanTransactionRepositoryImpl(
    remoteDataSource: sl(),
localDataSource: sl(),
networkManager: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionItemRepository>(
    () => LoanTransactionItemRepositoryImpl(
    remoteDataSource: sl(),
localDataSource: sl(),
networkManager: sl(),
    ),
  );

  sl.registerLazySingleton<PermissionRepository>(
    () => PermissionRepositoryImpl(
    permissionService: sl(),
    ),
  );

  sl.registerLazySingleton<ToolRepository>(
    () => ToolRepositoryImpl(
    remoteDataSource: sl(),
localDataSource: sl(),
networkManager: sl(),
    ),
  );

  sl.registerLazySingleton<UserProfileRepository>(
    () => UserProfileRepositoryImpl(
    remoteDataSource: sl(),
localDataSource: sl(),
networkManager: sl(),
    ),
  );
}