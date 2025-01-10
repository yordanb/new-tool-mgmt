import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

extension ContextActionExtension on BuildContext {
  BuildContext get context => this;

  Widget action({
    required Function onDismiss,
    required Widget child,
    Function? onTap,
  }) {
    late Widget w;
    if (onTap != null) {
      w = InkWell(
        onTap: () {
          onTap.call();
        },
        child: child,
      );
    } else {
      w = child;
    }

    return Dismissible(
      key: UniqueKey(),
      onDismissed: (detail) => onDismiss(),
      confirmDismiss: (direction) async {
        final isConfirmed = await confirm(
          title: 'Confirmation',
          message: 'Are you sure you want to delete this item?',
        );

        if (isConfirmed) {
          onDismiss;
          return Future.value(true);
        }
        return Future.value(false);
      },
      child: w,
    );
  }
}
