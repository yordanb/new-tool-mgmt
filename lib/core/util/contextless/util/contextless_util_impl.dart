import 'package:hyper_supabase/core/shortcut/shortcut.dart';
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

class ContextLessUtilImpl implements ContextLessUtil {
  @override
  BuildContext getContext() {
    return appRouterContext;
  }
}
