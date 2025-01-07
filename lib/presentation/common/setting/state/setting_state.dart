import 'package:hyper_supabase/core.dart';

class SettingState {
  //@declaration
  ViewState viewState;
  FullViewState fullViewState;
  //:@declaration

  SettingState({
    //@constructor
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    //:@constructor
  });
  
  //@copyWith
  SettingState copyWith({
     ViewState? viewState,
     FullViewState? fullViewState
  }) {
    return SettingState(
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState
    );
  }
}