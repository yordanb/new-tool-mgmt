import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

@RoutePage()
class ToolFormView extends StatefulWidget {
  final int? id;
  const ToolFormView({
    super.key,
    @pathParam this.id,
  });

  @override
  State<ToolFormView> createState() => _ToolFormViewState();
}

class _ToolFormViewState extends State<ToolFormView> {
  final ToolFormCubit cubit = sl<ToolFormCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ToolFormState get state => cubit.state;
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
        ToolFormListener(),
      ],
      child: BlocSelector<ToolFormCubit, ToolFormState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text("ToolForm"),
              actions: const [],
            ),
            body: SupaFormColumn(
              key: const Key("tool_form"),
              isEditMode: state.isEditMode,
              formKey: formKey,
              children: [
                //::FORM
                QTextField(
                  label: "Name",
                  validator: Validator.required,
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
                QImagePicker(
                  label: "Image Url",
                  validator: Validator.required,
                  extensions: ['png', 'jpg'],
                  value: cubit.state.imageUrl,
                  onChanged: (value) {
                    cubit.state.imageUrl = value;
                  },
                ),
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
