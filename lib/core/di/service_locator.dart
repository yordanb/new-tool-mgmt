import 'dart:io';
import 'package:app_links/app_links.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_supabase/core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hyper_supabase/env.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  //Config Manager
  sl.registerLazySingleton<ConfigManager>(
    () => ConfigManagerImpl(
      supabaseURL: Env.supabaseURL,
      supabaseAnonKey: Env.supabaseAnonKey,
      defaultAdminEmail: "admin@demo.com",
      forceOffline: false,
      isTestingMode: false,
      isDevMode: false,
      isSafeMode: false,
    ),
  );

  sl.registerLazySingleton<ThemeManager>(() => ThemeManagerImpl());
  sl.registerLazySingleton<LocalizationManager>(
    () => LocalizationManagerImpl(
      locales: [
        const Locale('en'),
        const Locale('es'),
        const Locale('id'),
        const Locale('ja'),
        const Locale('ko'),
      ],
    ),
  );

  if (Platform.isAndroid || Platform.isIOS || kIsWeb) {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  //ContextLess
  sl.registerSingleton<ContextLessUtil>(ContextLessUtilImpl());

  //AppLinks
  sl.registerSingleton<AppLinks>(AppLinks());

  //AppLinks
  sl.registerSingleton<AppRouter>(AppRouter(initial: '/login'));

  //Dio
  Dio dio = Dio();
  sl.registerLazySingleton<Dio>(() => dio);

  //Network Manager
  sl.registerLazySingleton<NetworkManager>(() => NetworkManagerImpl());

  // Shared Preferences
  var prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);

  //Random Data Generator
  sl.registerLazySingleton<RandomDataGenerator>(
    () => RandomDataGenerator(
      client: sl(),
    ),
  );

  //Supabase
  final supabase = SupabaseClient(
    sl<ConfigManager>().supabaseURL,
    sl<ConfigManager>().supabaseAnonKey,
    //Required for register in self-hosted Supabase
    authOptions: const AuthClientOptions(
      authFlowType: AuthFlowType.implicit,
    ),
    //--------------------
  );
  sl.registerLazySingleton<SupabaseClient>(() => supabase);

  configureServiceDependencies();
  configureLocalDataSourceDependencies();
  configureRemoteDataSourceDependencies();
  configureRepositoryDependencies();
  configureUseCaseDependencies();
  configureCubitDependencies();

  // after all dependencies are registered
  configureControllerDependencies();
  await afterConfigureDependencies();
}

Future<void> afterConfigureDependencies() async {
  if (!sl<ConfigManager>().isTestingMode)
    await sl<RequestPermissonsPermissionUseCase>().call();
  await sl<InitializeAppNotificationUseCase>().call();
}
