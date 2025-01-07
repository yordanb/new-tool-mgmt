import 'package:hyper_supabase/core.dart';

class DevDashboardCubitImpl extends Cubit<DevDashboardState>
    implements DevDashboardCubit {
  DevDashboardCubitImpl() : super(DevDashboardState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(DevDashboardState());
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
