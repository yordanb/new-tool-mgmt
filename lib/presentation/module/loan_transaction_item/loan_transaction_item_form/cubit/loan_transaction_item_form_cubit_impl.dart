import 'package:hyper_supabase/core.dart';

class LoanTransactionItemFormCubitImpl
    extends Cubit<LoanTransactionItemFormState>
    implements LoanTransactionItemFormCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetLoanTransactionItemUseCase getLoanTransactionItemUseCase;
  final CreateLoanTransactionItemUseCase createLoanTransactionItemUseCase;
  final UpdateLoanTransactionItemUseCase updateLoanTransactionItemUseCase;
  final RandomDataGenerator r;

  LoanTransactionItemFormCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getLoanTransactionItemUseCase,
    required this.createLoanTransactionItemUseCase,
    required this.updateLoanTransactionItemUseCase,
    required this.r,
  }) : super(LoanTransactionItemFormState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(LoanTransactionItemFormState());
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

    state.current = await getLoanTransactionItemUseCase.call(
      id: state.id!,
    );

    if (state.current == null) {
      state.fullViewState = FullViewState.error;
      emit(state.copyWith());
      return;
    }

    state.loanTransactionId = state.current!.loanTransactionId;
    state.toolId = state.current!.toolId;
    state.qty = state.current!.qty;
    state.memo = state.current!.memo;
    state.status = state.current!.status;
    state.createdAt = state.current!.createdAt;

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> initialRandomValues() async {
    state.loanTransactionId = await r.randomId('loan_transaction');
    state.toolId = await r.randomId('tool');
    state.qty = 1;
    state.memo = r.randomWords();
    state.status =
        r.firstValueFromList(["Borrowed", "Returned", "Damaged", "Lost"]);
    state.createdAt = DateTime.now();
  }

  Future<void> create() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await createLoanTransactionItemUseCase.call(
        //@BEGIN_FORM_CREATE_VALUES
        loanTransactionId: state.loanTransactionId,
        toolId: state.toolId,
        qty: state.qty,
        memo: state.memo,
        status: state.status,
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

      await updateLoanTransactionItemUseCase.call(
        //@BEGIN_FORM_UPDATE_VALUES
        id: state.id!,
        loanTransactionId: state.loanTransactionId,
        toolId: state.toolId,
        qty: state.qty,
        memo: state.memo,
        status: state.status,
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
