import 'package:hyper_supabase/core.dart';

class ProfileState {
  //@declaration
  ViewState viewState;
  FullViewState fullViewState;
  AppSessionEntity? session;
  UserProfileEntity? current;
  //:@declaration

  ProfileState({
    //@constructor
    this.viewState = ViewState.idle,
    this.fullViewState = FullViewState.idle,
    this.session,
    this.current,
    //:@constructor
  });
  
  //@copyWith
  ProfileState copyWith({
     ViewState? viewState,
     FullViewState? fullViewState,
     AppSessionEntity? session,
     UserProfileEntity? current
  }) {
    return ProfileState(
      viewState: viewState ?? this.viewState,
      fullViewState: fullViewState ?? this.fullViewState,
      session: session ?? this.session,
      current: current ?? this.current
    );
  }
}