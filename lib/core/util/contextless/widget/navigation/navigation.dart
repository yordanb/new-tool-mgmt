import 'package:flutter/material.dart';
import 'package:hyper_supabase/core/util/contextless/util/contextless_util.dart';

void pop() {
  // somehow pop(); is not working
  // so we use this method to pop the current context as an alternative
  Navigator.pop(currentContext);
}
