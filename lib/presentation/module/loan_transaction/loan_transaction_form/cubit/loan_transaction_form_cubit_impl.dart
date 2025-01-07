import 'package:hyper_supabase/core.dart';

class LoanTransactionFormCubitImpl extends Cubit<LoanTransactionFormState>
    implements LoanTransactionFormCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetLoanTransactionUseCase getLoanTransactionUseCase;
  final CreateLoanTransactionUseCase createLoanTransactionUseCase;
  final UpdateLoanTransactionUseCase updateLoanTransactionUseCase;
  final GetAllToolUseCase getAllToolUseCase;
  final CreateLoanTransactionItemUseCase createLoanTransactionItemUseCase;
  final UpdateLoanTransactionItemUseCase updateLoanTransactionItemUseCase;
  final GetAllLoanTransactionItemUseCase getAllLoanTransactionItemUseCase;
  final GetLoanTransactionItemUseCase getLoanTransactionItemUseCase;
  final DeleteLoanTransactionItemUseCase deleteLoanTransactionItemUseCase;
  final RandomDataGenerator r;

  LoanTransactionFormCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getLoanTransactionUseCase,
    required this.createLoanTransactionUseCase,
    required this.updateLoanTransactionUseCase,
    required this.getAllToolUseCase,
    required this.createLoanTransactionItemUseCase,
    required this.updateLoanTransactionItemUseCase,
    required this.getAllLoanTransactionItemUseCase,
    required this.getLoanTransactionItemUseCase,
    required this.deleteLoanTransactionItemUseCase,
    required this.r,
  }) : super(LoanTransactionFormState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(LoanTransactionFormState());
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
      state.tools = await getAllToolUseCase.call(
        page: 1,
        limit: 1000,
      );

      state.loanTransactionItems = await getAllLoanTransactionItemUseCase.call(
        loanTransactionId: state.id!,
      );
    }

    printo("tools: ${state.tools}");
    printo("tools: ${state.tools}");

    if (state.isEditMode) {
      await getData();
    } else {
      if (appDevConfig.enableRandomData) await initialRandomValues();
      //auto create and edit
      await create();
      return;
    }

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> getData() async {
    if (state.isEditMode == false) return;

    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.current = await getLoanTransactionUseCase.call(
      id: state.id!,
    );

    if (state.current == null) {
      state.fullViewState = FullViewState.error;
      emit(state.copyWith());
      return;
    }

    state.status = state.current!.status;
    state.createdAt = state.current!.createdAt;

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future<void> initialRandomValues() async {
    state.status = r.firstValueFromList(["Ongoing", "Done"]);
    state.userProfileId = state.session!.userProfileId;
    state.createdAt = DateTime.now();
  }

  Future<void> create() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      final newEntity = await createLoanTransactionUseCase.call(
        //@BEGIN_FORM_CREATE_VALUES
        status: state.status,
        userProfileId: state.userProfileId,
        //@END_FORM_CREATE_VALUES
      );

      state.id = newEntity!.id;
      state.viewState = ViewState.createSuccess;
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

      //Check if all status of loan transaction items are "Returned"
      bool allReturned = state.loanTransactionItems
          .every((element) => element.status == "Returned");
      String status = "Ongoing";
      if (allReturned) {
        status = "Done";
      }

      await updateLoanTransactionUseCase.call(
        //@BEGIN_FORM_UPDATE_VALUES
        id: state.id!,
        status: status,
        userProfileId: state.userProfileId,
        //@END_FORM_CREATE_VALUES
      );

      List<LoanTransactionItemEntity> currentItems =
          await getAllLoanTransactionItemUseCase.call(
        loanTransactionId: state.id!,
      );

      //deleted items or qty equals to zero

      final notExistsInLoadTransactionItems = currentItems
          .where((e) => state.loanTransactionItems
              .every((element) => element.toolId != e.toolId))
          .toList();

      for (var item in notExistsInLoadTransactionItems) {
        printr("ACTION: delete removed item ${item.id}, ${item.toolId}");
        await deleteLoanTransactionItemUseCase.call(item.id!);
      }

      for (var item in state.loanTransactionItems) {
        var index = currentItems.indexWhere((e) => e.toolId == item.toolId);
        bool exists = index > -1;

        if (exists) {
          var current = currentItems[index];
          printr("ACTION: current: ${item.qty}");
          printr("ACTION: update item ${current.id}, ${current.toolId}");
          await updateLoanTransactionItemUseCase.call(
            id: current.id!,
            loanTransactionId: state.id!,
            toolId: item.toolId,
            qty: item.qty,
            status: item.status,
            memo: item.memo,
          );
        } else {
          printr("ACTION: new item ${item.toolId} ${item.qty}");
          if (item.qty == 0) continue;
          printr("ACTION: create new item ${item.toolId}");
          await createLoanTransactionItemUseCase.call(
            loanTransactionId: state.id!,
            toolId: item.toolId,
            qty: item.qty,
            status: item.status,
            memo: item.memo,
          );
        }
      }

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

  void updateTabFilter(String value) {
    state.tabFilter = value;
    state.tools = [...state.tools];
    emit(state.copyWith());
  }

  void removeItem(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index != -1) {
      state.loanTransactionItems.removeAt(index);
    }
    state.loanTransactionItems = [...state.loanTransactionItems];
    state.tools = [...state.tools];
    emit(state.copyWith());
  }

  bool hasItem(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    return index != -1;
  }

  void addItem(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) {
      final newItem = LoanTransactionItemEntity(
        toolId: item.id,
        tool: item,
        qty: 1,
      );
      state.loanTransactionItems = [...state.loanTransactionItems, newItem];
    }
  }

  void updateStatus(ToolEntity item, String status) {
    addItem(item);
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return;
    state.loanTransactionItems[index].status = status;
    state.loanTransactionItems = [...state.loanTransactionItems];
    state.tools = [...state.tools];

    Future.delayed(const Duration(milliseconds: 200), () {
      emit(state.copyWith());
    });
  }

  void updateMemo(ToolEntity item, String value) {
    addItem(item);
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return;
    state.loanTransactionItems[index].memo = value;
    state.loanTransactionItems = [...state.loanTransactionItems];
    state.tools = [...state.tools];
    emit(state.copyWith());
  }

  double getQty(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return 0;
    final LoanTransactionItemEntity? current =
        state.loanTransactionItems[index];
    return current?.qty ?? 0;
  }

  String getStatus(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return "";
    final LoanTransactionItemEntity? current =
        state.loanTransactionItems[index];
    return current?.status ?? "";
  }

  String getMemo(ToolEntity item) {
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return "";
    final LoanTransactionItemEntity? current =
        state.loanTransactionItems[index];
    return current?.memo ?? "";
  }

  void updateSearch(String value) {
    state.search = value;
    state.tools = [...state.tools];
    emit(state.copyWith());
  }

  void updateQty(ToolEntity item, double value) {
    addItem(item);
    final index =
        state.loanTransactionItems.indexWhere((e) => e.toolId == item.id);
    if (index == -1) return;
    state.loanTransactionItems[index].qty = value;
    state.loanTransactionItems = [...state.loanTransactionItems];
    emit(state.copyWith());
  }
}
