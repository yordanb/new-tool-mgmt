import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class LoanTransactionItemFormView extends StatefulWidget {
  final int? id;
  const LoanTransactionItemFormView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<LoanTransactionItemFormView> createState() => _LoanTransactionItemFormViewState();
}

class _LoanTransactionItemFormViewState extends State<LoanTransactionItemFormView> {
  final LoanTransactionItemFormCubit cubit = sl<LoanTransactionItemFormCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  LoanTransactionItemFormState get state => cubit.state;
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
      listeners: const [
        LoanTransactionItemFormListener(),
      ],
      child: BlocSelector<LoanTransactionItemFormCubit, LoanTransactionItemFormState,
          FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          
          return Scaffold(
            appBar: AppBar(
              title: const Text("LoanTransactionItemForm"),
              actions: const [],
            ),
            body: SupaFormColumn(
              key: const Key("loan_transaction_item_form"),
              isEditMode: state.isEditMode,
              formKey: formKey,
              children: [
                //::FORM
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
                //@BOTTOM_FORM
              ],
            ),
            bottomNavigationBar: QActionButton(
              label: "Save",
              onPressed: () {
                bool isNotValid = formKey.currentState!.validate() == false;
                if(isNotValid) {
                  return;
                }

                if(state.isCreateMode) {
                  cubit.create();
                }
                else if(state.isEditMode) {
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
  
  