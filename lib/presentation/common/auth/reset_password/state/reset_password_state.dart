// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class ResetPasswordState {
  //@declaration
  ViewState viewState;
  FullViewState fullViewState;
  //:@declaration

  ResetPasswordState({
    //@constructor
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    //:@constructor
  });

  factory ResetPasswordState.fromJson(Map<String, dynamic> json) {
    return ResetPasswordState(
      viewState: json['view_state'],
      fullViewState: json['full_view_state']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'view_state': viewState,
      'full_view_state': fullViewState
    };
  }

  //@copyWith
  ResetPasswordState copyWith({
     ViewState? viewState,
     FullViewState? fullViewState
  }) {
    return ResetPasswordState(
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState
    );
  }
}