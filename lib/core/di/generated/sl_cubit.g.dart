// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureCubitDependencies() async {
      
  sl.registerLazySingleton<LoginCubit>(
    () => LoginCubitImpl(
    loginUseCase: sl(),
registerUseCase: sl(),
checkLoginStatusUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<RegisterCubit>(
    () => RegisterCubitImpl(
    registerUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<ResetPasswordCubit>(
    () => ResetPasswordCubitImpl(
    
    ),
  );

  sl.registerLazySingleton<DevDashboardCubit>(
    () => DevDashboardCubitImpl(
    
    ),
  );

  sl.registerLazySingleton<EditProfileCubit>(
    () => EditProfileCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getUserProfileUseCase: sl(),
createUserProfileUseCase: sl(),
updateUserProfileUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<MainCubit>(
    () => MainCubitImpl(
    configManager: sl(),
    ),
  );

  sl.registerLazySingleton<MainNavigationCubit>(
    () => MainNavigationCubitImpl(
    
    ),
  );

  sl.registerLazySingleton<ProfileCubit>(
    () => ProfileCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getUserProfileUseCase: sl(),
logoutUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<SettingCubit>(
    () => SettingCubitImpl(
    
    ),
  );

  sl.registerLazySingleton<ApplicationConfigFormCubit>(
    () => ApplicationConfigFormCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getApplicationConfigUseCase: sl(),
createApplicationConfigUseCase: sl(),
updateApplicationConfigUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<ApplicationConfigListCubit>(
    () => ApplicationConfigListCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getAllApplicationConfigUseCase: sl(),
deleteApplicationConfigUseCase: sl(),
deleteAllApplicationConfigUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionFormCubit>(
    () => LoanTransactionFormCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getLoanTransactionUseCase: sl(),
createLoanTransactionUseCase: sl(),
updateLoanTransactionUseCase: sl(),
getAllToolUseCase: sl(),
createLoanTransactionItemUseCase: sl(),
updateLoanTransactionItemUseCase: sl(),
getAllLoanTransactionItemUseCase: sl(),
getLoanTransactionItemUseCase: sl(),
deleteLoanTransactionItemUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionListCubit>(
    () => LoanTransactionListCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getAllLoanTransactionUseCase: sl(),
deleteLoanTransactionUseCase: sl(),
deleteAllLoanTransactionUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionItemFormCubit>(
    () => LoanTransactionItemFormCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getLoanTransactionItemUseCase: sl(),
createLoanTransactionItemUseCase: sl(),
updateLoanTransactionItemUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionItemListCubit>(
    () => LoanTransactionItemListCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getAllLoanTransactionItemUseCase: sl(),
deleteLoanTransactionItemUseCase: sl(),
deleteAllLoanTransactionItemUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<ToolFormCubit>(
    () => ToolFormCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getToolUseCase: sl(),
createToolUseCase: sl(),
updateToolUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<ToolListCubit>(
    () => ToolListCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getAllToolUseCase: sl(),
deleteToolUseCase: sl(),
deleteAllToolUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<UserProfileFormCubit>(
    () => UserProfileFormCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getUserProfileUseCase: sl(),
createUserProfileUseCase: sl(),
updateUserProfileUseCase: sl(),
r: sl(),
    ),
  );

  sl.registerLazySingleton<UserProfileListCubit>(
    () => UserProfileListCubitImpl(
    getCurrentAppSessionUseCase: sl(),
getAllUserProfileUseCase: sl(),
deleteUserProfileUseCase: sl(),
deleteAllUserProfileUseCase: sl(),
    ),
  );
}