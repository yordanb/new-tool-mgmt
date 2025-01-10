import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class ToolListView extends StatefulWidget {

const ToolListView({
  super.key,
  
});

@override
State<ToolListView> createState() => _ToolListViewState();
}

class _ToolListViewState extends State<ToolListView> {
  final ToolListCubit cubit = sl<ToolListCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ToolListState get state => cubit.state;
  
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
        ToolListListener(),
      ],
      child: BlocSelector<ToolListCubit, ToolListState,
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
                title: const Text("ToolList"),
                actions: [
                  //@SEARCH
                  StreamSearch(
                    onFilter: () => cubit.updateFilter(),
                    onReset: () => cubit.resetFilter(),
                    onDeleteAll: () => cubit.deleteAll(),
                    filterMode: cubit.isFilterMode,
                    widgets: [
                      //::FILTER_FORM
QTextField(
  label: "Name",
  validator: Validator.required ,
  value: cubit.state.name,
  
  
  onChanged: (value) {
    cubit.state.name = value;
  },
),
QMemoField(
  label: "Description",
  validator: Validator.required,
  value: cubit.state.description,
  onChanged: (value) {
    cubit.state.description = value;
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
                      child: BlocSelector<ToolListCubit,
                              ToolListState, ListViewItemState>(
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
                                      ToolEntity item = state.items[index];

                                      return ListTileRow(
                                        key: const Key("tool_list_tile_row"),
                                        index: index,
                                        onDismiss: () => cubit.delete(item.id!),
                                        onTap: () async {
                                          await router.push(ToolFormRoute(
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
            label: "Name",
            value: item.name,
          ),
ListRowImageItem(
            label: "Image Url",
            value: item.imageUrl,
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
                      await router.push(ToolFormRoute());
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
  