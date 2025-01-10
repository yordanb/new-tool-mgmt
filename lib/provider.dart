// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class AppProvider extends StatelessWidget {
  final Widget child;
  const AppProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final List<SingleChildWidget> providers = [
      /// BEGINING OF PROVIDERS

      BlocProvider(create: (_) => sl<LoginCubit>()),

      BlocProvider(create: (_) => sl<RegisterCubit>()),

      BlocProvider(create: (_) => sl<ResetPasswordCubit>()),

      BlocProvider(create: (_) => sl<DevDashboardCubit>()),

      BlocProvider(create: (_) => sl<EditProfileCubit>()),

      BlocProvider(create: (_) => sl<MainCubit>()),

      BlocProvider(create: (_) => sl<MainNavigationCubit>()),

      BlocProvider(create: (_) => sl<ProfileCubit>()),

      BlocProvider(create: (_) => sl<SettingCubit>()),

      BlocProvider(create: (_) => sl<ApplicationConfigFormCubit>()),

      BlocProvider(create: (_) => sl<ApplicationConfigListCubit>()),

      BlocProvider(create: (_) => sl<LoanTransactionFormCubit>()),

      BlocProvider(create: (_) => sl<LoanTransactionListCubit>()),

      BlocProvider(create: (_) => sl<LoanTransactionItemFormCubit>()),

      BlocProvider(create: (_) => sl<LoanTransactionItemListCubit>()),

      BlocProvider(create: (_) => sl<ToolFormCubit>()),

      BlocProvider(create: (_) => sl<ToolListCubit>()),

      BlocProvider(create: (_) => sl<UserProfileFormCubit>()),

      BlocProvider(create: (_) => sl<UserProfileListCubit>()),

      /// END OF PROVIDERS
    ];
    return MultiBlocProvider(
      providers: providers,
      child: child,
    );
  }
}
