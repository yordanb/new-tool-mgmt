import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

bool _loadingShown = false;

void showLoading() {
  _loadingShown = true;
  showDialog(
    context: currentContext,
    barrierDismissible: false,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}

void hideLoading() {
  ScaffoldMessenger.of(currentContext).hideCurrentSnackBar();
  if (!_loadingShown) return;
  _loadingShown = false;
  Navigator.of(currentContext).pop();
}
