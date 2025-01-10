import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class LoanTransactionItemListView extends StatefulWidget {

const LoanTransactionItemListView({
  super.key,
  
});

@override
State<LoanTransactionItemListView> createState() => _LoanTransactionItemListViewState();
}

class _LoanTransactionItemListViewState extends State<LoanTransactionItemListView> {
  final LoanTransactionItemListCubit cubit = sl<LoanTransactionItemListCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  LoanTransactionItemListState get state => cubit.state;
  
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
  return MultiBlocListener(
      listeners: const [
        LoanTransactionItemListListener(),
      ],
      child: BlocSelector<LoanTransactionItemListCubit, LoanTransactionItemListState,
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
                title: const Text("LoanTransactionItemList"),
                actions: [
                  //@SEARCH
                  StreamSearch(
                    onFilter: () => cubit.updateFilter(),
                    onReset: () => cubit.resetFilter(),
                    onDeleteAll: () => cubit.deleteAll(),
                    filterMode: cubit.isFilterMode,
                    widgets: [
                      //::FILTER_FORM
LoanTransactionAutocompleteField(
  label: "Loan Transaction",
  
  validator: Validator.required,
  value: cubit.state.loanTransactionId?.toString(),
  onChanged: (value, label, mapValue) {
      cubit.state.loanTransactionId = value;
      
  },
),
ToolAutocompleteField(
  label: "Tool",
  
  validator: Validator.required,
  value: cubit.state.toolId?.toString(),
  onChanged: (value, label, mapValue) {
      cubit.state.toolId = value;
      
  },
),
QNumberFilterField(
  label: "Qty",
  validator: Validator.required,
  value: cubit.state.qtyOperatorAndValue?.toString(),
    onChanged: (value, operator, operatorAndValue) {
    cubit.state.qtyOperatorAndValue = operatorAndValue;
  },
),
QTextField(
  label: "Memo",
  validator: Validator.required ,
  value: cubit.state.memo,
  
  
  onChanged: (value) {
    cubit.state.memo = value;
  },
),
QDropdownField(
  label: "Status",
  validator: Validator.required,
  items: [{"label":"Borrowed","value":"Borrowed"},{"label":"Returned","value":"Returned"},{"label":"Damaged","value":"Damaged"},{"label":"Lost","value":"Lost"}],
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
                    Expanded(
                      child: BlocSelector<LoanTransactionItemListCubit,
                              LoanTransactionItemListState, ListViewItemState>(
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
                                      LoanTransactionItemEntity item = state.items[index];

                                      return ListTileRow(
                                        key: const Key("loan_transaction_item_list_tile_row"),
                                        index: index,
                                        onDismiss: () => cubit.delete(item.id!),
                                        onTap: () async {
                                          await router.push(LoanTransactionItemFormRoute(
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
            label: "LoanTransaction",
            value: item.loanTransaction?.id,
          ),
ListRowItem(
            label: "Tool",
            value: item.tool?.name,
          ),
ListRowItem(
            label: "Qty",
            value: item.qty,
          ),
ListRowItem(
            label: "Memo",
            value: item.memo,
          ),
ListRowItem(
            label: "Status",
            value: item.status,
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
                      await router.push(LoanTransactionItemFormRoute());
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
  