import 'package:flutter/foundation.dart';
import 'package:hyper_supabase/core.dart';

class RegisterCubitImpl extends Cubit<RegisterState> implements RegisterCubit {
  final RegisterUseCase registerUseCase;
  RegisterCubitImpl({
    required this.registerUseCase,
  }) : super(RegisterState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(RegisterState());
    init?.call();

    if (kDebugMode) {
      state.name = "User";
      state.email = const Uuid().v4().substring(10) + "@mailinator.com";
      state.password = "123456";
    }
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

  void register() async {
    print("Registering...");
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await registerUseCase.call(
        name: state.name,
        email: state.email,
        password: state.password,
      );

      state.viewState = ViewState.success;
      emit(state.copyWith());
    } catch (e) {
      printr(e);
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }
}
