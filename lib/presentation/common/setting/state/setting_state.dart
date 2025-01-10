// ignore: unused_import
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

  factory SettingState.fromJson(Map<String, dynamic> json) {
    return SettingState(
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