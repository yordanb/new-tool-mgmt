import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class LoanTransactionListView extends StatefulWidget {
  const LoanTransactionListView({
    super.key,
  });

  @override
  State<LoanTransactionListView> createState() =>
      _LoanTransactionListViewState();
}

class _LoanTransactionListViewState extends State<LoanTransactionListView> {
  final LoanTransactionListCubit cubit = sl<LoanTransactionListCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  LoanTransactionListState get state => cubit.state;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    cubit.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => cubit.ready(),
    );
    scrollController.addListener(() {
      var offset = scrollController.offset;
      var maxScroll = scrollController.position.maxScrollExtent;
      if (offset == maxScroll) {
        cubit.loadMore();
      } else {
        return;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //ORder list dengan filter by status (Ongoing, Done) di bagian atas

    return MultiBlocListener(
      listeners: const [
        LoanTransactionListener(),
      ],
      child: BlocSelector<LoanTransactionListCubit, LoanTransactionListState,
          FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return RefreshIndicator(
            onRefresh: () async {
              cubit.reload();
            },
            child: Scaffold(
              appBar: AppBar(
                //@HAS_PARENT_SCOPE
                //@:HAS_PARENT_SCOPE
                title: const Text("LoanTransactionList"),
                actions: [
                  //@SEARCH
                  StreamSearch(
                    onFilter: () => cubit.updateFilter(),
                    onReset: () => cubit.resetFilter(),
                    onDeleteAll: () => cubit.deleteAll(),
                    filterMode: cubit.isFilterMode,
                    widgets: [
                      //::FILTER_FORM
                      QDropdownField(
                        label: "Status",
                        validator: Validator.required,
                        items: [
                          {"label": "Ongoing", "value": "Ongoing"},
                          {"label": "Done", "value": "Done"}
                        ],
                        value: cubit.state.status,
                        onChanged: (value, label) {
                          cubit.state.status = value;
                        },
                      ),
                      QDateRangePicker(
                        label: "Created At",
                        validator: Validator.required,
                        fromValue: cubit.state.createdAtFrom,
                        toValue: cubit.state.createdAtTo,
                        onChanged: (from, to) {
                          cubit.state.createdAtFrom = from;
                          cubit.state.createdAtTo = to;
                        },
                      ),
                      QDateRangePicker(
                        label: "Updated At",
                        validator: Validator.required,
                        fromValue: cubit.state.updatedAtFrom,
                        toValue: cubit.state.updatedAtTo,
                        onChanged: (from, to) {
                          cubit.state.updatedAtFrom = from;
                          cubit.state.updatedAtTo = to;
                        },
                      ),
                    ],
                  ),
                  //@:SEARCH
                ],
              ),
              body: Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    QCategoryPicker(
                      items: const [
                        {
                          "label": "Ongoing",
                          "value": "Ongoing",
                        },
                        {
                          "label": "Done",
                          "value": "Done",
                        },
                      ],
                      value: state.status,
                      validator: Validator.required,
                      onChanged: (index, label, value, item) {
                        cubit.updateStatus(value);
                      },
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Expanded(
                      child: BlocSelector<LoanTransactionListCubit,
                              LoanTransactionListState, ListViewItemState>(
                          selector: (state) => state.listViewItemState,
                          builder: (context, _) {
                            return Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    controller: scrollController,
                                    itemCount: state.items.length,
                                    physics: const ScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      LoanTransactionEntity item =
                                          state.items[index];

                                      return ListTileRow(
                                        key: const Key(
                                            "loan_transaction_list_tile_row"),
                                        index: index,
                                        onDismiss: () => cubit.delete(item.id!),
                                        onTap: () async {
                                          await router
                                              .push(LoanTransactionFormRoute(
                                            id: item.id,
                                          ));
                                          cubit.reload();
                                        },
                                        actions: [
                                          //::LIST_VIEW_ACTIONS
                                        ],
                                        children: [
                                          //::LIST_VIEW_ITEM
                                          ListRowItem(
                                            label: "Status",
                                            value: item.status,
                                          ),
                                          ListRowItem(
                                            label: "UserProfile",
                                            value: item
                                                .userProfile?.userProfileName,
                                          ),
                                          ListRowItem(
                                            label: "Created At",
                                            value: item.createdAt,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                if (state.listViewItemState ==
                                    ListViewItemState.loadMoreLoading)
                                  const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActions(
                children: [
                  FloatingActionButton(
                    heroTag: UniqueKey(),
                    onPressed: () async {
                      await router.push(LoanTransactionFormRoute());
                      cubit.reload();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
