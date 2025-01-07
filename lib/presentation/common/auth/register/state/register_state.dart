import 'package:hyper_supabase/core.dart';

class RegisterState {
  //@declaration
  ViewState viewState;
  FullViewState fullViewState;
  String? name;
  String? email;
  String? password;
  //:@declaration

  RegisterState({
    //@constructor
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    this.name,
    this.email,
    this.password,
    //:@constructor
  });
  
  //@copyWith
  RegisterState copyWith({
     ViewState? viewState,
     FullViewState? fullViewState,
     String? name,
     String? email,
     String? password
  }) {
    return RegisterState(
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password
    );
  }
}