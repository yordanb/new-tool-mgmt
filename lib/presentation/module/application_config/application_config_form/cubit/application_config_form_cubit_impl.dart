import 'package:hyper_supabase/core.dart';

class ApplicationConfigFormCubitImpl extends Cubit<ApplicationConfigFormState> implements ApplicationConfigFormCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetApplicationConfigUseCase getApplicationConfigUseCase;
  final CreateApplicationConfigUseCase createApplicationConfigUseCase;
  final UpdateApplicationConfigUseCase updateApplicationConfigUseCase;
  final RandomDataGenerator r;

  ApplicationConfigFormCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getApplicationConfigUseCase,
    required this.createApplicationConfigUseCase,
    required this.updateApplicationConfigUseCase,
    required this.r,
  }) : super(ApplicationConfigFormState());

  @override
  void initState({
      Function? init,
    }) {
    //initState event
    emit(ApplicationConfigFormState());
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

    if (state.isEditMode) {
      await getData();
    }
    else {
      if (appDevConfig.enableRandomData) await initialRandomValues();
    }

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> getData() async {
    if (state.isEditMode == false) return;
      
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.current = await getApplicationConfigUseCase.call(
      id: state.id!,
    );

      if (state.current == null) {
      state.fullViewState = FullViewState.error;
      emit(state.copyWith());
      return;
    }

    state.appMode = state.current!.appMode;
state.companyName = state.current!.companyName;
state.address = state.current!.address;
state.phoneNumber = state.current!.phoneNumber;
state.createdAt = state.current!.createdAt;

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> initialRandomValues() async {
    state.appMode = r.firstValueFromList(["Production", "Development", "Maintenance"]);
state.companyName = r.randomName();
state.address = r.randomAddress();
state.phoneNumber = r.randomPhone();
state.createdAt = DateTime.now();

  }

  Future<void> create() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await createApplicationConfigUseCase.call(
        //@BEGIN_FORM_CREATE_VALUES
        appMode: state.appMode,
companyName: state.companyName,
address: state.address,
phoneNumber: state.phoneNumber,
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

      await updateApplicationConfigUseCase.call(
        //@BEGIN_FORM_UPDATE_VALUES
        id: state.id!,
        appMode: state.appMode,
companyName: state.companyName,
address: state.address,
phoneNumber: state.phoneNumber,
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
  