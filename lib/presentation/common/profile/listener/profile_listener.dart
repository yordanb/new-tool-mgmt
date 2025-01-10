import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

class ProfileListener extends SingleChildStatelessWidget {
  const ProfileListener({
    super.key,
    super.child,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        AppLocalizations lang = AppLocalizations.of(context)!;

        if (state.viewState == ViewState.idle) {
          hideLoading();
          return;
        }

        if (state.viewState == ViewState.success) {
          hideLoading();
          snackSuccess(message: lang.defaultSuccess);
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
