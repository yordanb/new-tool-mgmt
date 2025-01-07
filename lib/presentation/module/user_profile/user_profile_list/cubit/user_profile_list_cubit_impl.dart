import 'package:hyper_supabase/core.dart';

class UserProfileListCubitImpl extends Cubit<UserProfileListState> implements UserProfileListCubit {
  final GetCurrentAppSessionUseCase getCurrentAppSessionUseCase;
  final GetAllUserProfileUseCase getAllUserProfileUseCase;
  final DeleteUserProfileUseCase deleteUserProfileUseCase;
  final DeleteAllUserProfileUseCase deleteAllUserProfileUseCase;

  UserProfileListCubitImpl({
    required this.getCurrentAppSessionUseCase,
    required this.getAllUserProfileUseCase,
    required this.deleteUserProfileUseCase,
    required this.deleteAllUserProfileUseCase,
  }) : super(UserProfileListState());

  @override
  void initState({
      Function? init,
    }) {
    //initState event
    emit(UserProfileListState());
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

    final newItems = await getAllUserProfileUseCase.call(
      //::FILTER_SNAPSHOT_STATE_PARAMS
      id: state.id,
imageUrl: state.imageUrl,
userProfileName: state.userProfileName,
gender: state.gender,
email: state.email,
mobileNumber: state.mobileNumber,
fcmToken: state.fcmToken,
password: state.password,
role: state.role,
isActive: state.isActive,
idOperatorAndValue: state.idOperatorAndValue,
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

      await deleteUserProfileUseCase.call(id);
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

      await deleteAllUserProfileUseCase.call();

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
state.imageUrl,
state.userProfileName,
state.gender,
state.email,
state.mobileNumber,
state.fcmToken,
state.password,
state.role,
state.isActive,
state.createdAt,
state.updatedAt,
state.idOperatorAndValue,
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
state.imageUrl = null;
state.userProfileName = null;
state.gender = null;
state.email = null;
state.mobileNumber = null;
state.fcmToken = null;
state.password = null;
state.role = null;
state.isActive = null;
state.createdAt = null;
state.updatedAt = null;
state.idOperatorAndValue = null;
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
}
  