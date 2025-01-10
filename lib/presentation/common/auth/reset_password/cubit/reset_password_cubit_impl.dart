import 'package:hyper_supabase/core.dart';

class ResetPasswordCubitImpl extends Cubit<ResetPasswordState>
    implements ResetPasswordCubit {
  ResetPasswordCubitImpl() : super(ResetPasswordState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(ResetPasswordState());
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
