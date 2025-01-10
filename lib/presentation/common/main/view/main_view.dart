import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

// @RoutePage()
class MainView extends StatefulWidget {
  final Widget child;
  const MainView({
    super.key,
    required this.child,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final MainCubit cubit = sl<MainCubit>();

  AppLocalizations get lang => AppLocalizations.of(context)!;
  MainState get state => cubit.state;
  ConfigManager get configManager => sl<ConfigManager>();
  ThemeManager get themeManager => sl<ThemeManager>();
  LocalizationManager get localizationManager => sl<LocalizationManager>();

  @override
  void initState() {
    cubit.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => cubit.ready(),
    );
    runSyncronizerTimer();
    super.initState();
    printr("[MainView] initState (This log must run only once per app start)");
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }

  void runSyncronizerTimer() async {
    /*
    - Syncronize queued tasks every 10 seconds
    - If the widget is not mounted, stop the timer
    */
    while (true) {
      await cubit.syncronize();
      await Future.delayed(const Duration(seconds: 10));
      if (!mounted) break;
    }
  }

  void updateToNextLanguage() {
    if (cubit.state.langIndex < localizationManager.locales.length - 1) {
      cubit.updateLanguage(cubit.state.langIndex + 1);
    } else {
      cubit.updateLanguage(0);
    }
  }

  void updateToNextTheme() {
    if (cubit.state.themeIndex < themeManager.themes.length - 1) {
      cubit.updateTheme(cubit.state.themeIndex + 1);
    } else {
      cubit.updateTheme(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: const [
        MainListener(),
      ],
      child: BlocSelector<MainCubit, MainState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Theme(
            data: themeManager.themes[cubit.state.themeIndex],
            child: Localizations(
              delegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: localizationManager.locales[cubit.state.langIndex],
              child: Scaffold(
                body: Column(
                  children: [
                    Expanded(
                      child: widget.child,
                    ),
                    if (kDebugMode)
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.orange[200]!,
                        ),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: updateToNextLanguage,
                                child: Text(
                                  "${localizationManager.locales[cubit.state.langIndex]}",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.red[900],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              InkWell(
                                onTap: updateToNextTheme,
                                child: Text(
                                  "Theme (${cubit.state.themeIndex})",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.red[900],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    currentContext,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DevDashboardView(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Dev",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.red[900],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
