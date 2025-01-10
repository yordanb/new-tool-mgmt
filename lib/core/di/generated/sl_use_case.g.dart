// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureUseCaseDependencies() async {
  sl.registerLazySingleton<CountApplicationConfigUseCase>(
    () => CountApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateApplicationConfigUseCase>(
    () => CreateApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteApplicationConfigUseCase>(
    () => DeleteApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllApplicationConfigUseCase>(
    () => DeleteAllApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetApplicationConfigUseCase>(
    () => GetApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllApplicationConfigUseCase>(
    () => GetAllApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SnapshotApplicationConfigUseCase>(
    () => SnapshotApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeApplicationConfigUseCase>(
    () => SyncronizeApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateApplicationConfigUseCase>(
    () => UpdateApplicationConfigUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountAppBluetoothUseCase>(
    () => CountAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateAppBluetoothUseCase>(
    () => CreateAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAppBluetoothUseCase>(
    () => DeleteAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllAppBluetoothUseCase>(
    () => DeleteAllAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeselectAppBluetoothUseCase>(
    () => DeselectAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAppBluetoothUseCase>(
    () => GetAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllAppBluetoothUseCase>(
    () => GetAllAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetSelectedAppBluetoothUseCase>(
    () => GetSelectedAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<PrintImageAppBluetoothUseCase>(
    () => PrintImageAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<PrintTextAppBluetoothUseCase>(
    () => PrintTextAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SelectAppBluetoothUseCase>(
    () => SelectAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeAppBluetoothUseCase>(
    () => SyncronizeAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateAppBluetoothUseCase>(
    () => UpdateAppBluetoothUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<InitializeAppNotificationUseCase>(
    () => InitializeAppNotificationUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountAppPrinterUseCase>(
    () => CountAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateAppPrinterUseCase>(
    () => CreateAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAppPrinterUseCase>(
    () => DeleteAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllAppPrinterUseCase>(
    () => DeleteAllAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAppPrinterUseCase>(
    () => GetAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllAppPrinterUseCase>(
    () => GetAllAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeAppPrinterUseCase>(
    () => SyncronizeAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateAppPrinterUseCase>(
    () => UpdateAppPrinterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountAppQueueUseCase>(
    () => CountAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateAppQueueUseCase>(
    () => CreateAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAppQueueUseCase>(
    () => DeleteAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllAppQueueUseCase>(
    () => DeleteAllAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAppQueueUseCase>(
    () => GetAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllAppQueueUseCase>(
    () => GetAllAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeAppQueueUseCase>(
    () => SyncronizeAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateAppQueueUseCase>(
    () => UpdateAppQueueUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountAppSessionUseCase>(
    () => CountAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateAppSessionUseCase>(
    () => CreateAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAppSessionUseCase>(
    () => DeleteAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllAppSessionUseCase>(
    () => DeleteAllAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAppSessionUseCase>(
    () => GetAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllAppSessionUseCase>(
    () => GetAllAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetCurrentAppSessionUseCase>(
    () => GetCurrentAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeAppSessionUseCase>(
    () => SyncronizeAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateAppSessionUseCase>(
    () => UpdateAppSessionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CheckLoginStatusUseCase>(
    () => CheckLoginStatusUseCaseImpl(
      repository: sl(),
      appSessionRepository: sl(),
    ),
  );

  sl.registerLazySingleton<IsLoggedInAuthUseCase>(
    () => IsLoggedInAuthUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<LoginAuthUseCase>(
    () => LoginAuthUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCaseImpl(
      repository: sl(),
      userProfileRepository: sl(),
      appSessionRepository: sl(),
    ),
  );

  sl.registerLazySingleton<LogoutAuthUseCase>(
    () => LogoutAuthUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCaseImpl(
      repository: sl(),
      appSessionRepository: sl(),
    ),
  );

  sl.registerLazySingleton<RegisterAuthUseCase>(
    () => RegisterAuthUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeAllUseCase>(
    () => SyncronizeAllUseCaseImpl(
      syncronizeApplicationConfigUseCase: sl(),
      syncronizeAppBluetoothUseCase: sl(),
      syncronizeAppPrinterUseCase: sl(),
      syncronizeAppQueueUseCase: sl(),
      syncronizeAppSessionUseCase: sl(),
      syncronizeLoanTransactionUseCase: sl(),
      syncronizeLoanTransactionItemUseCase: sl(),
      syncronizeToolUseCase: sl(),
      syncronizeUserProfileUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<CountLoanTransactionUseCase>(
    () => CountLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateLoanTransactionUseCase>(
    () => CreateLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteLoanTransactionUseCase>(
    () => DeleteLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllLoanTransactionUseCase>(
    () => DeleteAllLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetLoanTransactionUseCase>(
    () => GetLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllLoanTransactionUseCase>(
    () => GetAllLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SnapshotLoanTransactionUseCase>(
    () => SnapshotLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeLoanTransactionUseCase>(
    () => SyncronizeLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateLoanTransactionUseCase>(
    () => UpdateLoanTransactionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountLoanTransactionItemUseCase>(
    () => CountLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateLoanTransactionItemUseCase>(
    () => CreateLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteLoanTransactionItemUseCase>(
    () => DeleteLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllLoanTransactionItemUseCase>(
    () => DeleteAllLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetLoanTransactionItemUseCase>(
    () => GetLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllLoanTransactionItemUseCase>(
    () => GetAllLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SnapshotLoanTransactionItemUseCase>(
    () => SnapshotLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeLoanTransactionItemUseCase>(
    () => SyncronizeLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateLoanTransactionItemUseCase>(
    () => UpdateLoanTransactionItemUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<RequestPermissonsPermissionUseCase>(
    () => RequestPermissonsPermissionUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountToolUseCase>(
    () => CountToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateToolUseCase>(
    () => CreateToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteToolUseCase>(
    () => DeleteToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllToolUseCase>(
    () => DeleteAllToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetToolUseCase>(
    () => GetToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllToolUseCase>(
    () => GetAllToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SnapshotToolUseCase>(
    () => SnapshotToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeToolUseCase>(
    () => SyncronizeToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateToolUseCase>(
    () => UpdateToolUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CountUserProfileUseCase>(
    () => CountUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<CreateUserProfileUseCase>(
    () => CreateUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteUserProfileUseCase>(
    () => DeleteUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<DeleteAllUserProfileUseCase>(
    () => DeleteAllUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetUserProfileUseCase>(
    () => GetUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<GetAllUserProfileUseCase>(
    () => GetAllUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SnapshotUserProfileUseCase>(
    () => SnapshotUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<SyncronizeUserProfileUseCase>(
    () => SyncronizeUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );

  sl.registerLazySingleton<UpdateUserProfileUseCase>(
    () => UpdateUserProfileUseCaseImpl(
      repository: sl(),
    ),
  );
}
