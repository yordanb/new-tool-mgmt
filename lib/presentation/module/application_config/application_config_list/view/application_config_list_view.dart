import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class ApplicationConfigListView extends StatefulWidget {
  const ApplicationConfigListView({
    super.key,
  });

  @override
  State<ApplicationConfigListView> createState() =>
      _ApplicationConfigListViewState();
}

class _ApplicationConfigListViewState extends State<ApplicationConfigListView> {
  final ApplicationConfigListCubit cubit = sl<ApplicationConfigListCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ApplicationConfigListState get state => cubit.state;

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
        ApplicationConfigListListener(),
      ],
      child: BlocSelector<ApplicationConfigListCubit,
          ApplicationConfigListState, FullViewState>(
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
                title: const Text("ApplicationConfigList"),
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
                        label: "App Mode",
                        validator: Validator.required,
                        items: [
                          {"label": "Production", "value": "Production"},
                          {"label": "Development", "value": "Development"},
                          {"label": "Maintenance", "value": "Maintenance"}
                        ],
                        value: cubit.state.appMode,
                        onChanged: (value, label) {
                          cubit.state.appMode = value;
                        },
                      ),
                      QTextField(
                        label: "Company Name",
                        validator: Validator.required,
                        value: cubit.state.companyName,
                        onChanged: (value) {
                          cubit.state.companyName = value;
                        },
                      ),
                      QTextField(
                        label: "Address",
                        validator: Validator.required,
                        value: cubit.state.address,
                        onChanged: (value) {
                          cubit.state.address = value;
                        },
                      ),
                      QTextField(
                        label: "Phone Number",
                        validator: Validator.required,
                        value: cubit.state.phoneNumber,
                        onChanged: (value) {
                          cubit.state.phoneNumber = value;
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
                      child: BlocSelector<ApplicationConfigListCubit,
                              ApplicationConfigListState, ListViewItemState>(
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
                                      ApplicationConfigEntity item =
                                          state.items[index];

                                      return ListTileRow(
                                        key: const Key(
                                            "application_config_list_tile_row"),
                                        index: index,
                                        onDismiss: () => cubit.delete(item.id!),
                                        onTap: () async {
                                          await router
                                              .push(ApplicationConfigFormRoute(
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
                                            label: "App Mode",
                                            value: item.appMode,
                                          ),
                                          ListRowItem(
                                            label: "Company Name",
                                            value: item.companyName,
                                          ),
                                          ListRowItem(
                                            label: "Address",
                                            value: item.address,
                                          ),
                                          ListRowItem(
                                            label: "Phone Number",
                                            value: item.phoneNumber,
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
                      await router.push(ApplicationConfigFormRoute());
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
