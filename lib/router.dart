import 'package:auto_route/auto_route.dart';
import 'package:hyper_supabase/router.gr.dart';

/*
How to use AutoRouter
final appRouter = AppRouter(
  initial: "/splash",
);

return MaterialApp.router(
  routerConfig: appRouter.config(),
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
);
*/

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  final String initial;
  AppRouter({
    required this.initial,
  });

  @override
  List<AutoRoute> get routes {
    // initial: true must be implemented in one of the routes

    var appRoutes = [
      /// BEGINING OF ROUTES

      AutoRoute(
        path: "/login",
        page: LoginRoute.page,
      ),

      AutoRoute(
        path: "/register",
        page: RegisterRoute.page,
      ),

      AutoRoute(
        path: "/reset-password",
        page: ResetPasswordRoute.page,
      ),

      AutoRoute(
        path: "/dev-dashboard",
        page: DevDashboardRoute.page,
      ),

      AutoRoute(
        path: "/edit-profile",
        page: EditProfileRoute.page,
      ),

      AutoRoute(
        path: "/main-navigation",
        page: MainNavigationRoute.page,
      ),

      AutoRoute(
        path: "/profile",
        page: ProfileRoute.page,
      ),

      AutoRoute(
        path: "/setting",
        page: SettingRoute.page,
      ),

      AutoRoute(
        path: "/application-config-form",
        page: ApplicationConfigFormRoute.page,
      ),

      AutoRoute(
        path: "/application-config-list",
        page: ApplicationConfigListRoute.page,
      ),

      AutoRoute(
        path: "/loan-transaction-form",
        page: LoanTransactionFormRoute.page,
      ),

      AutoRoute(
        path: "/loan-transaction-list",
        page: LoanTransactionListRoute.page,
      ),

      AutoRoute(
        path: "/loan-transaction-item-form",
        page: LoanTransactionItemFormRoute.page,
      ),

      AutoRoute(
        path: "/loan-transaction-item-list",
        page: LoanTransactionItemListRoute.page,
      ),

      AutoRoute(
        path: "/tool-form",
        page: ToolFormRoute.page,
      ),

      AutoRoute(
        path: "/tool-list",
        page: ToolListRoute.page,
      ),

      AutoRoute(
        path: "/user-profile-form",
        page: UserProfileFormRoute.page,
      ),

      AutoRoute(
        path: "/user-profile-list",
        page: UserProfileListRoute.page,
      ),

      /// END OF ROUTES
      // RedirectRoute(path: '*', redirectTo: '/'),
    ];

    // set default route
    for (var i = 0; i < appRoutes.length; i++) {
      if (appRoutes[i].path == initial) {
        appRoutes[i] = AutoRoute(
          page: appRoutes[i].page,
          path: appRoutes[i].path,
          initial: true,
        );
        break;
      }
    }

    return appRoutes;
  }
}
