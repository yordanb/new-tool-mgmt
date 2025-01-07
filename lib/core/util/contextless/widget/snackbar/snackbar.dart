import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

void snackSuccess({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Colors.green,
  );
}

void snackError({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Colors.red,
  );
}

void snackWarning({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Colors.orange,
  );
}

void snackInfo({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Colors.blue,
  );
}

void snackPrimary({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Theme.of(currentContext).primaryColor,
  );
}

void snackSecondary({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  return customSnackbar(
    message: message,
    body: body,
    duration: duration,
    color: Theme.of(currentContext).secondaryHeaderColor,
  );
}

void customSnackbar({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
}) {
  final xsnackBar = SnackBar(
    content: Text(message),
  );
  ScaffoldMessenger.of(currentContext).hideCurrentSnackBar();
  ScaffoldMessenger.of(currentContext).showSnackBar(xsnackBar);
}
