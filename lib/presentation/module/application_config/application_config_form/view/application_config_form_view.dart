import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class ApplicationConfigFormView extends StatefulWidget {
  final int? id;
  const ApplicationConfigFormView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<ApplicationConfigFormView> createState() => _ApplicationConfigFormViewState();
}

class _ApplicationConfigFormViewState extends State<ApplicationConfigFormView> {
  final ApplicationConfigFormCubit cubit = sl<ApplicationConfigFormCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ApplicationConfigFormState get state => cubit.state;
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
        ApplicationConfigFormListener(),
      ],
      child: BlocSelector<ApplicationConfigFormCubit, ApplicationConfigFormState,
          FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          
          return Scaffold(
            appBar: AppBar(
              title: const Text("ApplicationConfigForm"),
              actions: const [],
            ),
            body: SupaFormColumn(
              key: const Key("application_config_form"),
              isEditMode: state.isEditMode,
              formKey: formKey,
              children: [
                //::FORM
QDropdownField(
  label: "App Mode",
  validator: Validator.required,
  items: [{"label":"Production","value":"Production"},{"label":"Development","value":"Development"},{"label":"Maintenance","value":"Maintenance"}],
  value: cubit.state.appMode,
  onChanged: (value, label) {
    cubit.state.appMode = value;
  },
),
QTextField(
  label: "Company Name",
  validator: Validator.required ,
  value: cubit.state.companyName,
  
  
  onChanged: (value) {
    cubit.state.companyName = value;
  },
),
QTextField(
  label: "Address",
  validator: Validator.required ,
  value: cubit.state.address,
  
  
  onChanged: (value) {
    cubit.state.address = value;
  },
),
QTextField(
  label: "Phone Number",
  validator: Validator.required ,
  value: cubit.state.phoneNumber,
  
  
  onChanged: (value) {
    cubit.state.phoneNumber = value;
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
  
  