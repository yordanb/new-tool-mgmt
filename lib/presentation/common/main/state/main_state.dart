// ignore: unused_import
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
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    this.themeIndex = 0,
    this.langIndex = 0,
    //:@constructor
  });

  factory MainState.fromJson(Map<String, dynamic> json) {
    return MainState(
        fullViewState: json['full_view_state'],
        viewState: json['view_state'],
        themeIndex: json['theme_index'],
        langIndex: json['lang_index']);
  }

  Map<String, dynamic> toJson() {
    return {
      'full_view_state': fullViewState,
      'view_state': viewState,
      'theme_index': themeIndex,
      'lang_index': langIndex
    };
  }

  //@copyWith
  MainState copyWith(
      {FullViewState? fullViewState,
      ViewState? viewState,
      int? themeIndex,
      int? langIndex}) {
    return MainState(
        fullViewState: fullViewState ?? this.fullViewState,
        viewState: viewState ?? this.viewState,
        themeIndex: themeIndex ?? this.themeIndex,
        langIndex: langIndex ?? this.langIndex);
  }
}
