import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

// Color primaryColor = Color(0xff507246);
Color get primaryColor => Theme.of(currentContext).primaryColor;
Color secondaryColor = const Color(0xff6c757d);
Color disabledColor = const Color(0xff9fa5aa).withValues(alpha: 0.6);
Color textColor = const Color(0xff464646);
// Color textColor = Colors.red;
Color secondaryTextColor = const Color(0xff6c7592);
Color scaffoldBackgroundColor = Colors.white;

Color successColor = const Color(0xff28a745);
Color infoColor = const Color(0xff17a2b8);
Color warningColor = const Color(0xffffc107);
Color dangerColor = const Color(0xffdc3545);

Color inputColor = Colors.grey[300]!;
double inputHeight = 52;
