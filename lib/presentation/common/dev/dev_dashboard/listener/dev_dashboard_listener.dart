import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

class DevDashboardListener extends SingleChildStatelessWidget {
  const DevDashboardListener({
    super.key,
    super.child,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocListener<DevDashboardCubit, DevDashboardState>(
      listener: (context, state) {
        AppLocalizations lang = AppLocalizations.of(context)!;

        if (state.viewState == ViewState.idle) {
          hideLoading();
          return;
        }

        if (state.viewState == ViewState.success) {
          hideLoading();
          router.replaceAll([LoginRoute()]);
          return;
        }

        if (state.viewState == ViewState.error) {
          hideLoading();
          snackError(message: lang.defaultError);
          return;
        }

        if (state.viewState == ViewState.loading) {
          showLoading();
          return;
        }

        if (state.viewState == ViewState.hideLoading) {
          hideLoading();
          return;
        }
      },
      child: child,
    );
  }
}
