// ignore: unused_import
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

  factory DevDashboardState.fromJson(Map<String, dynamic> json) {
    return DevDashboardState(
        viewState: json['view_state'], fullViewState: json['full_view_state']);
  }

  Map<String, dynamic> toJson() {
    return {'view_state': viewState, 'full_view_state': fullViewState};
  }

  //@copyWith
  DevDashboardState copyWith(
      {ViewState? viewState, FullViewState? fullViewState}) {
    return DevDashboardState(
        viewState: viewState ?? this.viewState,
        fullViewState: fullViewState ?? this.fullViewState);
  }
}
