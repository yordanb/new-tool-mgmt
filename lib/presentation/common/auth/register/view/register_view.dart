import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterView extends StatefulWidget {
  const RegisterView({
    super.key,
  });

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final RegisterCubit cubit = sl<RegisterCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  RegisterState get state => cubit.state;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    cubit.initState();
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
        RegisterListener(),
      ],
      child: BlocSelector<RegisterCubit, RegisterState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text("Register"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              controller: ScrollController(),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      QTextField(
                        label: "Name",
                        validator: Validator.required,
                        value: cubit.state.name,
                        onChanged: (value) {
                          cubit.state.name = value;
                        },
                      ),
                      QTextField(
                        label: "Email",
                        validator: Validator.email,
                        suffixIcon: Icons.email,
                        value: cubit.state.email,
                        onChanged: (value) {
                          cubit.state.email = value;
                        },
                      ),
                      QTextField(
                        label: "Password",
                        obscure: true,
                        validator: Validator.required,
                        suffixIcon: Icons.password,
                        value: cubit.state.password,
                        onChanged: (value) {
                          cubit.state.password = value;
                        },
                      ),
                      QButton(
                        label: "Register",
                        onPressed: () {
                          bool isNotValid =
                              formKey.currentState!.validate() == false;
                          if (isNotValid) {
                            return;
                          }
                          cubit.register();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
