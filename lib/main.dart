import 'package:flutter/foundation.dart';
import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

void main([List? args]) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // await prefs.clear();

  runMainApp();
}

Future<void> runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ConfigManager get configManager => sl<ConfigManager>();
  ThemeManager get themeManager => sl<ThemeManager>();
  LocalizationManager get localizationManager => sl<LocalizationManager>();

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp.router(
        routerConfig: appRouter.config(
          deepLinkTransformer: (uri) {
            printg("[DeepLink] Transformer ${uri}");
            AppRouterDeppLink().handle(uri);
            return SynchronousFuture(uri);
          },
        ),
        title: 'SuperApp',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: localizationManager.locales,
        locale: localizationManager.locales[0],
        theme: themeManager.themes[0],
        builder: (context, child) {
          //MainView will rebuilt every time i change page? or just once?
          //Answer: just once
          return MainView(child: child!);
        },
      ),
    );
  }
}
