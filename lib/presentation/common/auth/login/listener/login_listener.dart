import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

class LoginListener extends SingleChildStatelessWidget {
  const LoginListener({
    super.key,
    super.child,
  });

  /*
  - Melakukan navigasi ke halaman baru
  - Dialog
  - Snackbar
  - Loading
  */

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        AppLocalizations lang = AppLocalizations.of(context)!;

        if (state.viewState == ViewState.idle) {
          hideLoading();
          return;
        }

        if (state.viewState == ViewState.success) {
          hideLoading();
          snackSuccess(message: lang.defaultSuccess);

          router.replaceAll([MainNavigationRoute()]);
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
