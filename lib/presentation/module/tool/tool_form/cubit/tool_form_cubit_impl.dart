import 'package:hyper_supabase/core.dart';

class ToolFormCubitImpl extends Cubit<ToolFormState> implements ToolFormCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetToolUseCase getToolUseCase;
  final CreateToolUseCase createToolUseCase;
  final UpdateToolUseCase updateToolUseCase;
  final RandomDataGenerator r;

  ToolFormCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getToolUseCase,
    required this.createToolUseCase,
    required this.updateToolUseCase,
    required this.r,
  }) : super(ToolFormState());

  @override
  void initState({
      Function? init,
    }) {
    //initState event
    emit(ToolFormState());
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

    state.current = await getToolUseCase.call(
      id: state.id!,
    );

      if (state.current == null) {
      state.fullViewState = FullViewState.error;
      emit(state.copyWith());
      return;
    }

    state.name = state.current!.name;
state.description = state.current!.description;
state.imageUrl = state.current!.imageUrl;
state.createdAt = state.current!.createdAt;

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> initialRandomValues() async {
    state.name = r.randomName();
state.description = r.randomDescription();
state.imageUrl = r.randomImageUrl();
state.createdAt = DateTime.now();

  }

  Future<void> create() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await createToolUseCase.call(
        //@BEGIN_FORM_CREATE_VALUES
        name: state.name,
description: state.description,
imageUrl: state.imageUrl,
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

      await updateToolUseCase.call(
        //@BEGIN_FORM_UPDATE_VALUES
        id: state.id!,
        name: state.name,
description: state.description,
imageUrl: state.imageUrl,
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
  