import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class LoanTransactionFormView extends StatefulWidget {
  final int? id;
  const LoanTransactionFormView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<LoanTransactionFormView> createState() =>
      _LoanTransactionFormViewState();
}

class _LoanTransactionFormViewState extends State<LoanTransactionFormView> {
  final LoanTransactionFormCubit cubit = sl<LoanTransactionFormCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  LoanTransactionFormState get state => cubit.state;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    cubit.initState(init: () {
      cubit.state.id = widget.id;
    });
    cubit.state.id = widget.id;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => cubit.ready(),
    );
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
      listeners: [
        const LoanTransactionFormListener(),
      ],
      child: BlocSelector<LoanTransactionFormCubit, LoanTransactionFormState,
          FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text("LoanTransactionForm"),
              actions: const [],
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SupaFormColumn(
                    padding: const EdgeInsets.all(0.0),
                    key: const Key("loan_transaction_form"),
                    isEditMode: state.isEditMode,
                    formKey: formKey,
                    children: [
                      //::FORM
                      // QDropdownField(
                      //   label: "Status",
                      //   validator: Validator.required,
                      //   items: [
                      //     {"label": "Ongoing", "value": "Ongoing"},
                      //     {"label": "Done", "value": "Done"}
                      //   ],
                      //   value: cubit.state.status,
                      //   onChanged: (value, label) {
                      //     cubit.state.status = value;
                      //   },
                      // ),
                      //@BOTTOM_FORM
                    ],
                  ),
                  if (state.isEditMode) ...[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: QCategoryPicker(
                            items: const [
                              {
                                "label": "Search",
                                "value": "Search",
                                "icon": Icons.search,
                              },
                              {
                                "label": "Selected",
                                "value": "Selected",
                                "icon": Icons.shopping_cart,
                              },
                            ],
                            validator: Validator.required,
                            value: state.tabFilter,
                            onChanged: (index, label, value, item) {
                              cubit.updateTabFilter(value);
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Expanded(
                      child: BlocSelector<LoanTransactionFormCubit,
                              LoanTransactionFormState, List<ToolEntity>>(
                          selector: (state) => state.tools,
                          builder: (context, _) {
                            return ListView.builder(
                              itemCount: state.tools.length,
                              itemBuilder: (context, index) {
                                final tool = state.tools[index];
                                if (state.tabFilter == "Selected") {
                                  if (cubit.hasItem(tool) == false) {
                                    return Container();
                                  }
                                }

                                if (state.search.isNotEmpty) {
                                  if (tool.name!.toLowerCase().contains(
                                          state.search.toLowerCase()) ==
                                      false) {
                                    return Container();
                                  }
                                }

                                return Card(
                                  elevation: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.network(
                                              tool.imageUrl!,
                                              width: 64,
                                              height: 64,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(
                                              width: 12.0,
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    tool.name ?? "-",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 12.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      BlocSelector<
                                                          LoanTransactionFormCubit,
                                                          LoanTransactionFormState,
                                                          List<
                                                              LoanTransactionItemEntity>>(
                                                        selector: (state) => state
                                                            .loanTransactionItems,
                                                        builder: (context, _) {
                                                          return QQtyField(
                                                            key: UniqueKey(),
                                                            label: "Qty",
                                                            validator: Validator
                                                                .required,
                                                            value: cubit
                                                                .getQty(tool)
                                                                .toString(),
                                                            onChanged: (value) {
                                                              cubit.updateQty(
                                                                tool,
                                                                double.tryParse(
                                                                        value) ??
                                                                    0,
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                      const SizedBox(
                                                        width: 12.0,
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          cubit
                                                              .removeItem(tool);
                                                        },
                                                        child: const Icon(
                                                          Icons.delete_outline,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child:
                                                  QDialogCategoryWrapPickerField(
                                                key: UniqueKey(),
                                                label: "Status",
                                                items: [
                                                  {
                                                    "label": "Borrowed",
                                                    "value": "Borrowed"
                                                  },
                                                  {
                                                    "label": "Returned",
                                                    "value": "Returned"
                                                  },
                                                  {
                                                    "label": "Damaged",
                                                    "value": "Damaged"
                                                  },
                                                  {
                                                    "label": "Lost",
                                                    "value": "Lost"
                                                  }
                                                ],
                                                value: cubit.getStatus(tool),
                                                onChanged: (value, label) {
                                                  cubit.updateStatus(
                                                    tool,
                                                    value,
                                                  );
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: QDialogTextField(
                                                key: UniqueKey(),
                                                label: "Memo",
                                                value: cubit.getMemo(tool),
                                                onChanged: (value) {
                                                  cubit.updateMemo(tool, value);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                    ),
                  ],
                ],
              ),
            ),
            bottomNavigationBar: QActionButton(
              label: "Save",
              onPressed: () {
                bool isNotValid = formKey.currentState!.validate() == false;
                if (isNotValid) {
                  return;
                }

                if (state.isCreateMode) {
                  cubit.create();
                } else if (state.isEditMode) {
                  cubit.update();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
