import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({
    super.key,
  });

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final ResetPasswordCubit cubit = sl<ResetPasswordCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ResetPasswordState get state => cubit.state;

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
        ResetPasswordListener(),
      ],
      child:
          BlocSelector<ResetPasswordCubit, ResetPasswordState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text("ResetPassword"),
              actions: const [],
            ),
            body: Container(),
          );
        },
      ),
    );
  }
}
