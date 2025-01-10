import 'package:hyper_supabase/core.dart';

class MainNavigationCubitImpl extends Cubit<MainNavigationState>
    implements MainNavigationCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;

  MainNavigationCubitImpl({
    required this.getCurrentAppSessionUseCase,
  }) : super(MainNavigationState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(MainNavigationState());
    init?.call();
    initializeData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  void initializeData() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.session = await getCurrentAppSessionUseCase.call();

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void updateIndex(int newIndex) {
    state.selectedIndex = newIndex;
    emit(state.copyWith());
  }
}
