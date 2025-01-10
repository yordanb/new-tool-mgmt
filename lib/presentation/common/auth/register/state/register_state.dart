// ignore: unused_import
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

  factory RegisterState.fromJson(Map<String, dynamic> json) {
    return RegisterState(
      viewState: json['view_state'],
      fullViewState: json['full_view_state'],
      name: json['name'],
      email: json['email'],
      password: json['password']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'view_state': viewState,
      'full_view_state': fullViewState,
      'name': name,
      'email': email,
      'password': password
    };
  }

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