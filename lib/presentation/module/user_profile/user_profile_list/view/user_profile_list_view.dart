import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class UserProfileListView extends StatefulWidget {
  const UserProfileListView({
    super.key,
  });

  @override
  State<UserProfileListView> createState() => _UserProfileListViewState();
}

class _UserProfileListViewState extends State<UserProfileListView> {
  final UserProfileListCubit cubit = sl<UserProfileListCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  UserProfileListState get state => cubit.state;

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
        UserProfileListListener(),
      ],
      child: BlocSelector<UserProfileListCubit, UserProfileListState,
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
                title: const Text("UserProfileList"),
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
                        label: "User Profile Name",
                        validator: Validator.required,
                        value: cubit.state.userProfileName,
                        onChanged: (value) {
                          cubit.state.userProfileName = value;
                        },
                      ),
                      QDropdownField(
                        label: "Gender",
                        validator: Validator.required,
                        items: [
                          {"label": "Male", "value": "Male"},
                          {"label": "Female", "value": "Female"}
                        ],
                        value: cubit.state.gender,
                        onChanged: (value, label) {
                          cubit.state.gender = value;
                        },
                      ),
                      QTextField(
                        label: "Email",
                        validator: Validator.email,
                        value: cubit.state.email,
                        onChanged: (value) {
                          cubit.state.email = value;
                        },
                      ),
                      QTextField(
                        label: "Mobile Number",
                        validator: Validator.required,
                        value: cubit.state.mobileNumber,
                        onChanged: (value) {
                          cubit.state.mobileNumber = value;
                        },
                      ),
                      QTextField(
                        label: "Fcm Token",
                        validator: Validator.required,
                        value: cubit.state.fcmToken,
                        onChanged: (value) {
                          cubit.state.fcmToken = value;
                        },
                      ),
                      QDropdownField(
                        label: "Role",
                        validator: Validator.required,
                        items: [
                          {"label": "Admin", "value": "Admin"},
                          {"label": "User", "value": "User"}
                        ],
                        value: cubit.state.role,
                        onChanged: (value, label) {
                          cubit.state.role = value;
                        },
                      ),
                      if (state.session!.isAdmin)
                        QDropdownField(
                          label: "Is Active",
                          validator: Validator.required,
                          items: [
                            {
                              "label": "Yes",
                              "value": true,
                            },
                            {
                              "label": "No",
                              "value": false,
                            }
                          ],
                          value: cubit.state.isActive,
                          onChanged: (value, label) {
                            cubit.state.isActive = value;
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
                      child: BlocSelector<UserProfileListCubit,
                              UserProfileListState, ListViewItemState>(
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
                                      UserProfileEntity item =
                                          state.items[index];

                                      return ListTileRow(
                                        key: const Key(
                                            "user_profile_list_tile_row"),
                                        index: index,
                                        onDismiss: () => cubit.delete(item.id!),
                                        onTap: () async {
                                          await router
                                              .push(UserProfileFormRoute(
                                            id: item.id,
                                          ));
                                          cubit.reload();
                                        },
                                        actions: [
                                          //::LIST_VIEW_ACTIONS
                                        ],
                                        children: [
                                          //::LIST_VIEW_ITEM
                                          ListRowImageItem(
                                            label: "Image Url",
                                            value: item.imageUrl,
                                          ),
                                          ListRowItem(
                                            label: "User Profile Name",
                                            value: item.userProfileName,
                                          ),
                                          ListRowItem(
                                            label: "Gender",
                                            value: item.gender,
                                          ),
                                          ListRowItem(
                                            label: "Email",
                                            value: item.email,
                                          ),
                                          ListRowItem(
                                            label: "Mobile Number",
                                            value: item.mobileNumber,
                                          ),
                                          ListRowItem(
                                            label: "Fcm Token",
                                            value: item.fcmToken,
                                          ),
                                          ListRowItem(
                                            label: "Role",
                                            value: item.role,
                                          ),
                                          ListRowItem(
                                            label: "Is Active",
                                            value: item.isActive,
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
                      await router.push(UserProfileFormRoute());
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
