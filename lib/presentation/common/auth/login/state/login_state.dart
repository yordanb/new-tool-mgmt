import 'package:hyper_supabase/core.dart';

class LoginState {
  //@declaration
  String? email;
  String? password;
  ViewState viewState;
  FullViewState fullViewState;
  bool? isLoggedIn = false;
  //:@declaration

  LoginState({
    //@constructor
    this.email,
    this.password,
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    this.isLoggedIn,
    //:@constructor
  });
  
  //@copyWith
  LoginState copyWith({
     String? email,
     String? password,
     ViewState? viewState,
     FullViewState? fullViewState,
     bool? isLoggedIn
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn
    );
  }
}