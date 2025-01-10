// ignore: unused_import
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

  factory LoginState.fromJson(Map<String, dynamic> json) {
    return LoginState(
        email: json['email'],
        password: json['password'],
        viewState: json['view_state'],
        fullViewState: json['full_view_state'],
        isLoggedIn: json['is_logged_in']);
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'view_state': viewState,
      'full_view_state': fullViewState,
      'is_logged_in': isLoggedIn
    };
  }

  //@copyWith
  LoginState copyWith(
      {String? email,
      String? password,
      ViewState? viewState,
      FullViewState? fullViewState,
      bool? isLoggedIn}) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        viewState: viewState ?? this.viewState,
        fullViewState: fullViewState ?? this.fullViewState,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn);
  }
}
