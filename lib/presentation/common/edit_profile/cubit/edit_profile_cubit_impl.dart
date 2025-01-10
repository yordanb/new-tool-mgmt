import 'package:hyper_supabase/core.dart';

class EditProfileCubitImpl extends Cubit<EditProfileState>
    implements EditProfileCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetUserProfileUseCase getUserProfileUseCase;
  final CreateUserProfileUseCase createUserProfileUseCase;
  final UpdateUserProfileUseCase updateUserProfileUseCase;
  final RandomDataGenerator r;

  EditProfileCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getUserProfileUseCase,
    required this.createUserProfileUseCase,
    required this.updateUserProfileUseCase,
    required this.r,
  }) : super(EditProfileState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(EditProfileState());
    init?.call();
    state.isCreateMode = state.id == null;
    state.isEditMode = state.id != null;
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
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.session = await getCurrentAppSessionUseCase.call();

    if (state.isEditMode!) {
      await getData();
    } else {
      if (appDevConfig.enableRandomData) await initialRandomValues();
    }

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> getData() async {
    if (state.isEditMode == false) return;

    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.current = await getUserProfileUseCase.call(
      id: state.id!,
    );

    if (state.current == null) {
      state.fullViewState = FullViewState.error;
      emit(state.copyWith());
      return;
    }

    state.imageUrl = state.current!.imageUrl;
    state.userProfileName = state.current!.userProfileName;
    state.gender = state.current!.gender;
    state.email = state.current!.email;
    state.password = state.current!.password;
    state.role = state.current!.role;
    state.isActive = state.current!.isActive;
    state.createdAt = state.current!.createdAt;

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> initialRandomValues() async {
    state.imageUrl = r.randomImageUrl();
    state.userProfileName = r.randomName();
    state.gender = r.firstValueFromList(["Male", "Female"]);
    state.email = r.randomEmail();
    state.password = r.randomPassword();
    state.role = r.firstValueFromList(["Admin", "User"]);
    state.isActive = r.randomBoolean();
    state.createdAt = DateTime.now();
  }

  Future<void> create() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await createUserProfileUseCase.call(
        //@BEGIN_FORM_CREATE_VALUES
        imageUrl: state.imageUrl,
        userProfileName: state.userProfileName,
        gender: state.gender,
        email: state.email,
        password: state.password,
        role: state.role,
        isActive: state.isActive,
        //@END_FORM_CREATE_VALUES
      );

      state.viewState = ViewState.success;
      emit(state.copyWith());
    } on Exception catch (_) {
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }

  Future<void> update() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await updateUserProfileUseCase.call(
        //@BEGIN_FORM_UPDATE_VALUES
        id: state.id!,
        imageUrl: state.imageUrl,
        userProfileName: state.userProfileName,
        gender: state.gender,
        email: state.email,
        password: state.password,
        role: state.role,
        isActive: state.isActive,
        //@END_FORM_CREATE_VALUES
      );

      state.viewState = ViewState.success;
      emit(state.copyWith());
    } on Exception catch (_) {
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }

  Future<void> refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }
}
