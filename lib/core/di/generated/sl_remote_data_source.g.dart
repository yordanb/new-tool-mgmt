// ignore_for_file: unused_import
import 'package:hyper_supabase/core.dart';

void configureRemoteDataSourceDependencies() async {
  sl.registerLazySingleton<ApplicationConfigRemoteDataSource>(
    () => ApplicationConfigRemoteDataSourceImpl(
      client: sl(),
      r: sl(),
    ),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionRemoteDataSource>(
    () => LoanTransactionRemoteDataSourceImpl(
      client: sl(),
      r: sl(),
    ),
  );

  sl.registerLazySingleton<LoanTransactionItemRemoteDataSource>(
    () => LoanTransactionItemRemoteDataSourceImpl(
      client: sl(),
      r: sl(),
    ),
  );

  sl.registerLazySingleton<ToolRemoteDataSource>(
    () => ToolRemoteDataSourceImpl(
      client: sl(),
      r: sl(),
    ),
  );

  sl.registerLazySingleton<UserProfileRemoteDataSource>(
    () => UserProfileRemoteDataSourceImpl(
      client: sl(),
      r: sl(),
    ),
  );
}
