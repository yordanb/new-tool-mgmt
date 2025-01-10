import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// Please inject it first in locator before using it, sl.registerSingleton<ContextLess>(ContextLess());
// Don't use it directly, use it through locator, sl<ContextLess>()
abstract class ContextLessUtil {
  BuildContext getContext();
}

BuildContext get currentContext =>
    GetIt.instance<ContextLessUtil>().getContext();
