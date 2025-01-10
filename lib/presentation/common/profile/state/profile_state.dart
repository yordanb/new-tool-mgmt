// ignore: unused_import
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

  factory ProfileState.fromJson(Map<String, dynamic> json) {
    return ProfileState(
        viewState: json['view_state'],
        fullViewState: json['full_view_state'],
        session: json['session'] == null
            ? null
            : AppSessionEntity.fromJson(json['session']),
        current: json['current'] == null
            ? null
            : UserProfileEntity.fromJson(json['current']));
  }

  Map<String, dynamic> toJson() {
    return {
      'view_state': viewState,
      'full_view_state': fullViewState,
      'session': session,
      'current': current
    };
  }

  //@copyWith
  ProfileState copyWith(
      {ViewState? viewState,
      FullViewState? fullViewState,
      AppSessionEntity? session,
      UserProfileEntity? current}) {
    return ProfileState(
        viewState: viewState ?? this.viewState,
        fullViewState: fullViewState ?? this.fullViewState,
        session: session ?? this.session,
        current: current ?? this.current);
  }
}
