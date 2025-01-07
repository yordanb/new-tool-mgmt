import 'package:hyper_supabase/core.dart';

class MainNavigationState {
  //@declaration
  int selectedIndex;
  ViewState viewState;
  FullViewState fullViewState;
  //:@declaration

  MainNavigationState({
    //@constructor
    this.selectedIndex= 0,
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    //:@constructor
  });
  
  //@copyWith
  MainNavigationState copyWith({
     int? selectedIndex,
     ViewState? viewState,
     FullViewState? fullViewState
  }) {
    return MainNavigationState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState
    );
  }
}