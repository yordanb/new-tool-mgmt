import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainNavigationView extends StatefulWidget {
  MainNavigationView({
    super.key,
  });

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  final MainNavigationCubit cubit = sl<MainNavigationCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  MainNavigationState get state => cubit.state;

  @override
  void initState() {
    cubit.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => cubit.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        const MainNavigationListener(),
      ],
      child:
          BlocSelector<MainNavigationCubit, MainNavigationState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          List<MainNavigationItem> items = [
            //@ warehouse_app

            MainNavigationItem(
              icon: MdiIcons.toolbox,
              title: "Tools",
              widget: const ToolListView(),
            ),

            MainNavigationItem(
              icon: Icons.transfer_within_a_station_outlined,
              title: "Loan Transactions",
              widget: const LoanTransactionListView(),
            ),
            //:@ warehouse_app
            // MainNavigationItem(
            //   icon: Icons.person,
            //   title: lang.profile,
            //   widget: const ProfileView(),
            // ),
          ];

          List<BottomNavigationBarItem> bottomNavigationBarItems = [];
          for (int i = 0; i < items.length; i++) {
            bottomNavigationBarItems.add(
              BottomNavigationBarItem(
                icon: Icon(items[i].icon),
                label: items[i].title,
              ),
            );
          }

          return BlocSelector<MainNavigationCubit, MainNavigationState, int>(
            selector: (state) => state.selectedIndex,
            builder: (context, _) {
              return DefaultTabController(
                key: const Key("main_navigation_view"),
                length: items.length,
                initialIndex: cubit.state.selectedIndex,
                child: Scaffold(
                  body: items[cubit.state.selectedIndex].widget,
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: cubit.state.selectedIndex,
                    onTap: (newIndex) => cubit.updateIndex(newIndex),
                    type: BottomNavigationBarType.fixed,
                    items: bottomNavigationBarItems,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
