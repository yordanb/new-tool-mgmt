// Shortcut to access the router
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

AppRouter get appRouter => sl.get<AppRouter>();

// Shortcut to access the navigator key
GlobalKey<NavigatorState> appRouterNavigatorKey = appRouter.navigatorKey;

// Shortcut to access the navigator context
BuildContext get appRouterContext =>
    appRouterNavigatorKey.currentState!.context;

StackRouter get router => appRouterContext.router;
