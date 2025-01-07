import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
  });

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginCubit cubit = sl<LoginCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  LoginState get state => cubit.state;
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
        LoginListener(),
      ],
      // child: BlocSelector<LoginCubit, LoginState, bool>(
      //   selector: (state) => state.isLoggedIn,
      child: BlocSelector<LoginCubit, LoginState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            backgroundColor: Colors.grey[600],
            body: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              QTextField(
                                key: const Key("email_field"),
                                label: lang.email,
                                validator: Validator.email,
                                suffixIcon: Icons.email,
                                value: cubit.state.email,
                                onChanged: (value) {
                                  cubit.state.email = value;
                                },
                              ),
                              QTextField(
                                key: const Key("password_field"),
                                label: lang.password,
                                obscure: true,
                                validator: Validator.required,
                                suffixIcon: Icons.password,
                                value: cubit.state.password,
                                onChanged: (value) {
                                  cubit.state.password = value;
                                },
                              ),
                              QButton(
                                key: const Key("login_button"),
                                label: lang.login,
                                onPressed: () {
                                  bool isNotValid =
                                      formKey.currentState!.validate() == false;
                                  if (isNotValid) {
                                    return;
                                  }

                                  cubit.login();
                                },
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              QButton(
                                key: const Key("register_button"),
                                label: lang.register,
                                onPressed: () {
                                  router.push(RegisterRoute());
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
