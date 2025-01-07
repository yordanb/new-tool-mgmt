import 'package:hyper_supabase/core.dart';

class MainState {
  //@declaration
  FullViewState fullViewState;
  ViewState viewState;
  int themeIndex;
  int langIndex;
  //:@declaration

  MainState({
    //@constructor
    this.viewState= ViewState.idle,
    this.fullViewState= FullViewState.idle,
    this.themeIndex = 0,
    this.langIndex= 0,
    //:@constructor
  });
  
  //@copyWith
  MainState copyWith({
     FullViewState? fullViewState,
     ViewState? viewState,
     int? themeIndex,
     int? langIndex
  }) {
    return MainState(
      fullViewState: fullViewState ?? this.fullViewState,
      viewState: viewState ?? this.viewState,
      themeIndex: themeIndex ?? this.themeIndex,
      langIndex: langIndex ?? this.langIndex
    );
  }
}