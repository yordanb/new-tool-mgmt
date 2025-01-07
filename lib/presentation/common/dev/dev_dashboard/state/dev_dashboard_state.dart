import 'package:hyper_supabase/core.dart';

class DevDashboardState {
  //@declaration
  ViewState viewState;
  FullViewState fullViewState;
  //:@declaration

  DevDashboardState({
    //@constructor
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    //:@constructor
  });
  
  //@copyWith
  DevDashboardState copyWith({
     ViewState? viewState,
     FullViewState? fullViewState
  }) {
    return DevDashboardState(
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState
    );
  }
}