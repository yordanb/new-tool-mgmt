import 'package:hyper_supabase/core.dart';

class SettingCubitImpl extends Cubit<SettingState> implements SettingCubit {
  SettingCubitImpl() : super(SettingState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(SettingState());
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
}
