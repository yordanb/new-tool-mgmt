import 'package:hyper_supabase/core.dart';

class LoanTransactionListCubitImpl extends Cubit<LoanTransactionListState>
    implements LoanTransactionListCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetAllLoanTransactionUseCase getAllLoanTransactionUseCase;
  final DeleteLoanTransactionUseCase deleteLoanTransactionUseCase;
  final DeleteAllLoanTransactionUseCase deleteAllLoanTransactionUseCase;

  LoanTransactionListCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getAllLoanTransactionUseCase,
    required this.deleteLoanTransactionUseCase,
    required this.deleteAllLoanTransactionUseCase,
  }) : super(LoanTransactionListState());

  @override
  void initState({
    Function? init,
  }) {
    //initState event
    emit(LoanTransactionListState());
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
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.session = await getCurrentAppSessionUseCase.call();
    await getData();

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  Future getData() async {
    printg("[Pagination] Load more.. ${state.page}");
    if (state.page == 0) {
      state.items = [];
    }

    final newItems = await getAllLoanTransactionUseCase.call(
      //::FILTER_SNAPSHOT_STATE_PARAMS
      id: state.id,
      status: state.status,
      userProfileId:
          state.session!.isAdmin ? null : state.session?.userProfileId,
      idOperatorAndValue: state.idOperatorAndValue,
      userProfileIdOperatorAndValue: state.userProfileIdOperatorAndValue,
      createdAtFrom: state.createdAtFrom,
      createdAtTo: state.createdAtTo,
      updatedAtFrom: state.updatedAtFrom,
      updatedAtTo: state.updatedAtTo,
      page: state.page,
      limit: state.limit,
    );

    if (newItems.isEmpty) {
      // No more data on next page, revert page state to previous
      state.page = state.page - 1;
    }

    state.items = [
      ...state.items,
      ...newItems,
    ];
  }

  Future<void> delete(int id) async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await deleteLoanTransactionUseCase.call(id);
      state.items = state.items.where((element) => element.id != id).toList();

      state.viewState = ViewState.success;
      emit(state.copyWith());
    } on Exception catch (_) {
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }

  Future<void> deleteAll() async {
    try {
      state.viewState = ViewState.loading;
      emit(state.copyWith());

      await deleteAllLoanTransactionUseCase.call();

      state.viewState = ViewState.success;
      emit(state.copyWith());
      reload();
    } on Exception catch (_) {
      state.viewState = ViewState.error;
      emit(state.copyWith());
    }
  }

  //@CHECK_FILTER_MODE
  bool get isFilterMode {
    List values = [
      //state.id,
      state.status,
      state.userProfileId,
      state.createdAt,
      state.updatedAt,
      state.idOperatorAndValue,
      state.userProfileIdOperatorAndValue,
      state.createdAtFrom,
      state.createdAtTo,
      state.updatedAtFrom,
      state.updatedAtTo,
    ];
    return values.indexWhere((i) =>
            (i != null && i != "") ||
            (i != null && i is String && i.isNotEmpty)) >
        -1;
  }
  //@:CHECK_FILTER_MODE

  void resetFilter() {
    //state.id = null;
    state.status = "Ongoing";
    state.userProfileId = null;
    state.createdAt = null;
    state.updatedAt = null;
    state.idOperatorAndValue = null;
    state.userProfileIdOperatorAndValue = null;
    state.createdAtFrom = null;
    state.createdAtTo = null;
    state.updatedAtFrom = null;
    state.updatedAtTo = null;
    reload();
  }

  Future<void> refresh() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    await Future.delayed(const Duration(milliseconds: 100));

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void updateFilter() {
    reload();
  }

  void loadMore() async {
    state.listViewItemState = ListViewItemState.loadMoreLoading;
    emit(state.copyWith());

    state.page = state.page + 1;
    await getData();

    state.listViewItemState = ListViewItemState.ready;
    emit(state.copyWith());
  }

  void reload() async {
    state.fullViewState = FullViewState.loading;
    emit(state.copyWith());

    state.page = 1;
    state.items = [];
    await getData();

    state.fullViewState = FullViewState.ready;
    emit(state.copyWith());
  }

  void filterReload() async {
    state.listViewItemState = ListViewItemState.loading;
    emit(state.copyWith());

    state.page = 1;
    state.items = [];
    await getData();

    state.listViewItemState = ListViewItemState.ready;
    emit(state.copyWith());
  }

  void updateStatus(String value) async {
    state.status = value;
    filterReload();
  }
}
