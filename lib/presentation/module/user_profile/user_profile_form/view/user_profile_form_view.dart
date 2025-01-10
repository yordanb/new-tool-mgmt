import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class UserProfileFormView extends StatefulWidget {
  final int? id;
  const UserProfileFormView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<UserProfileFormView> createState() => _UserProfileFormViewState();
}

class _UserProfileFormViewState extends State<UserProfileFormView> {
  final UserProfileFormCubit cubit = sl<UserProfileFormCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  UserProfileFormState get state => cubit.state;
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
        UserProfileFormListener(),
      ],
      child: BlocSelector<UserProfileFormCubit, UserProfileFormState,
          FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          
          return Scaffold(
            appBar: AppBar(
              title: const Text("UserProfileForm"),
              actions: const [],
            ),
            body: SupaFormColumn(
              key: const Key("user_profile_form"),
              isEditMode: state.isEditMode,
              formKey: formKey,
              children: [
                //::FORM
QImagePicker(
  label: "Image Url",
  validator: Validator.required,
  extensions: ['png', 'jpg'],
  value: cubit.state.imageUrl,
  onChanged: (value) {
    cubit.state.imageUrl = value;
  },
),
QTextField(
  label: "User Profile Name",
  validator: Validator.required ,
  value: cubit.state.userProfileName,
  
  
  onChanged: (value) {
    cubit.state.userProfileName = value;
  },
),
QDropdownField(
  label: "Gender",
  validator: Validator.required,
  items: [{"label":"Male","value":"Male"},{"label":"Female","value":"Female"}],
  value: cubit.state.gender,
  onChanged: (value, label) {
    cubit.state.gender = value;
  },
),
QTextField(
  label: "Email",
  enabled: state.isCreateMode,
  validator: Validator.email ,
  value: cubit.state.email,
  
  
  onChanged: (value) {
    cubit.state.email = value;
  },
),
QTextField(
  label: "Mobile Number",
  validator: Validator.required ,
  value: cubit.state.mobileNumber,
  
  
  onChanged: (value) {
    cubit.state.mobileNumber = value;
  },
),
QDropdownField(
  label: "Role",
  validator: Validator.required,
  items: [{"label":"Admin","value":"Admin"},{"label":"User","value":"User"}],
  value: cubit.state.role,
  onChanged: (value, label) {
    cubit.state.role = value;
  },
),
if(state.session!.isAdmin)
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
  
  