import 'package:hyper_supabase/core.dart';

class MainCubitImpl extends Cubit<MainState> implements MainCubit {
  final ConfigManager configManager;
  MainCubitImpl({
    required this.configManager,
  }) : super(MainState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(MainState());
    init?.call();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  void refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void updateTheme(int themeIndex) async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.themeIndex = themeIndex;
    await Future.delayed(const Duration(milliseconds: 0));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void updateLanguage(int langIndex) async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.langIndex = langIndex;
    await Future.delayed(const Duration(milliseconds: 0));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void updateConfigForceOffline() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    configManager.forceOffline = !configManager.forceOffline;
    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());

    print("config.forceOffline: ${configManager.forceOffline}");
  }

  Future<void> syncronize() async {
    await sl<SyncronizeAllUseCase>().call();
  }
}
