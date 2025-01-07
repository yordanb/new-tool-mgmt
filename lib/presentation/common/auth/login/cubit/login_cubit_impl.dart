import 'package:flutter/foundation.dart';
import 'package:hyper_supabase/core.dart';

class LoginCubitImpl extends Cubit<LoginState> implements LoginCubit {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final CheckLoginStatusUseCase checkLoginStatusUseCase;

  LoginCubitImpl({
    required this.loginUseCase,
    required this.registerUseCase,
    required this.checkLoginStatusUseCase,
  }) : super(LoginState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(LoginState());
    state.fullViewState = FullViewState.loading;
    init?.call();
    if (kDebugMode) {
      state.email = "user@demo.com";
      state.password = "123456";
    }
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

    state.isLoggedIn = await checkLoginStatusUseCase.call();
    printr("state.isLoggedIn: ${state.isLoggedIn}");

    if (state.isLoggedIn!) {
      state.viewState = ViewState.success;
      emit(state.copyWith());
      return;
    }

    printg("Set FullViewState to ${state.fullViewState}");
    state.fullViewState = FullViewState.ready;
    printg("Set FullViewState to ${state.fullViewState}");
    emit(state.copyWith());
  }

  void refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void login() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await loginUseCase.call(
        email: state.email,
        password: state.password,
      );

      state.viewState = ViewState.success;
      emit(state.copyWith());
    } on Exception catch (_) {
      print(_);
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }
}
