import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DevDashboardView extends StatefulWidget {
  const DevDashboardView({
    super.key,
  });

  @override
  State<DevDashboardView> createState() => _DevDashboardViewState();
}

class _DevDashboardViewState extends State<DevDashboardView> {
  final DevDashboardCubit cubit = sl<DevDashboardCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  DevDashboardState get state => cubit.state;

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
        const DevDashboardListener(),
      ],
      child: BlocSelector<DevDashboardCubit, DevDashboardState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          List skipRoutes = [
            "Login",
            "Register",
            "Reset Password",
            "Dev Dashboard",
          ];

          List<Map<String, dynamic>> modules = sl<AppRouter>().routes.map((e) {
            var titleCase = e.page.name
                .toString()
                .replaceAll("/", "")
                .replaceAll("-", " ")
                .replaceAll("Route", "")
                .toWordCase();

            if (skipRoutes.contains(titleCase) || titleCase.contains("Form")) {
              return {
                "name": titleCase,
                "path": e.path,
                'skip': true,
              };
            }

            return {
              "name": titleCase,
              "path": e.path,
            };
          }).toList();

          modules.removeWhere((element) => element['skip'] == true);

          return Scaffold(
            appBar: AppBar(
              title: const Text("DevDashboard"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QButton(
                    label: "Show loading",
                    onPressed: () async {
                      showLoading();
                      await Future.delayed(const Duration(seconds: 2));
                      hideLoading();
                    },
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QButton(
                    label: "Logout",
                    onPressed: () async {
                      router.replaceAll([LoginRoute()]);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0 / 1.0,
                      crossAxisCount: 3,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                    ),
                    itemCount: modules.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          router.pushNamed(modules[index]["path"]);
                        },
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(6.0),
                            child: Center(
                              child: Text(
                                modules[index]["name"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
