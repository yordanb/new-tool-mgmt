import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class EditProfileView extends StatefulWidget {
  final int? id;
  const EditProfileView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
} //ok

class _EditProfileViewState extends State<EditProfileView> {
  final EditProfileCubit cubit = sl<EditProfileCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  EditProfileState get state => cubit.state;
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
        EditProfileListener(),
      ],
      child: BlocSelector<EditProfileCubit, EditProfileState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text("EditProfile"),
              actions: const [],
            ),
            body: SupaFormColumn(
              key: const Key("user_profile_form"),
              isEditMode: state.isEditMode!,
              formKey: formKey,
              children: [
                //::FORM
                QImagePicker(
                  label: "Image Url",
                  validator: Validator.required,
                  extensions: const ['png', 'jpg'],
                  value: cubit.state.imageUrl,
                  onChanged: (value) {
                    cubit.state.imageUrl = value;
                  },
                ),
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
                  items: const [
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
                  enabled: false,
                  value: cubit.state.email,
                  onChanged: (value) {
                    cubit.state.email = value;
                  },
                ),
                // QTextField(
                //   label: "Password",
                //   validator: Validator.required,
                //   value: cubit.state.password,
                //   obscure: true,
                //   enabled: cubit.state.isEditMode ? false : true,
                //   onChanged: (value) {
                //     cubit.state.password = value;
                //   },
                // ),
                // QDropdownField(
                //   label: "Role",
                //   validator: Validator.required,
                //   items: const [
                //     {"label": "Admin", "value": "Admin"},
                //     {"label": "User", "value": "User"}
                //   ],
                //   value: cubit.state.role,
                //   onChanged: (value, label) {
                //     cubit.state.role = value;
                //   },
                // ),
                // QDropdownField(
                //   label: "Is Active",
                //   validator: Validator.required,
                //   items: const [
                //     {
                //       "label": "Yes",
                //       "value": true,
                //     },
                //     {
                //       "label": "No",
                //       "value": false,
                //     }
                //   ],
                //   value: cubit.state.isActive,
                //   onChanged: (value, label) {
                //     cubit.state.isActive = value;
                //   },
                // ),
                //@BOTTOM_FORM
              ],
            ),
            bottomNavigationBar: QActionButton(
              label: "Save",
              onPressed: () {
                bool isNotValid = formKey.currentState!.validate() == false;
                if (isNotValid) {
                  return;
                }

                if (state.isCreateMode!) {
                  cubit.create();
                } else if (state.isEditMode!) {
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
