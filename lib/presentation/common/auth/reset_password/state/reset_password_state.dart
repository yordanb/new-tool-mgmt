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