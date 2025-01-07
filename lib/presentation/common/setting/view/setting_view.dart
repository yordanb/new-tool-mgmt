import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingView extends StatefulWidget {
  const SettingView({
    super.key,
  });

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  final SettingCubit cubit = sl<SettingCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  SettingState get state => cubit.state;

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
        SettingListener(),
      ],
      child: BlocSelector<SettingCubit, SettingState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text("Setting"),
              actions: const [],
            ),
            body: Container(),
          );
        },
      ),
    );
  }
}
