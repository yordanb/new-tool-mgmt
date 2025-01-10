// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class MainNavigationState {
  //@declaration
  int selectedIndex;
  ViewState viewState;
  FullViewState fullViewState;
  AppSessionEntity? session;
  //:@declaration

  MainNavigationState({
    //@constructor
    this.selectedIndex = 0,
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    this.session,
    //:@constructor
  });

  factory MainNavigationState.fromJson(Map<String, dynamic> json) {
    return MainNavigationState(
        selectedIndex: json['selected_index'],
        viewState: json['view_state'],
        fullViewState: json['full_view_state'],
        session: AppSessionEntity.fromJson(json['session'] ?? {}));
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_index': selectedIndex,
      'view_state': viewState,
      'full_view_state': fullViewState,
      'session': session
    };
  }

  //@copyWith
  MainNavigationState copyWith(
      {int? selectedIndex,
      ViewState? viewState,
      FullViewState? fullViewState,
      AppSessionEntity? session}) {
    return MainNavigationState(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        viewState: viewState ?? this.viewState,
        fullViewState: fullViewState ?? this.fullViewState,
        session: session ?? this.session);
  }
}
