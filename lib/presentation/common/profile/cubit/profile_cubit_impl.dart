import 'package:hyper_supabase/core.dart';

class ProfileCubitImpl extends Cubit<ProfileState> implements ProfileCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetUserProfileUseCase getUserProfileUseCase;
  final LogoutUseCase logoutUseCase;
  ProfileCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getUserProfileUseCase,
    required this.logoutUseCase,
  }) : super(ProfileState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(ProfileState());
    init?.call();
    initializeData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  void initializeData() async {
    printg("initializeData...");
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.session = await getCurrentAppSessionUseCase.call();
    await getData();

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void logout() async {
    state.viewState = ViewState.loading;
    emit(state.copyWith());

    await logoutUseCase.call();

    state.viewState = ViewState.success;
    emit(state.copyWith());
  }

  Future<void> getData() async {
    state.current = await getUserProfileUseCase.call(
      id: state.session!.userProfileId!,
    );
  }
}
