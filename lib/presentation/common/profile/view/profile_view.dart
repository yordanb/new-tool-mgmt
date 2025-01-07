import 'package:hyper_supabase/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
  });

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ProfileCubit cubit = sl<ProfileCubit>();
  AppLocalizations get lang => AppLocalizations.of(context)!;
  ProfileState get state => cubit.state;

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
      listeners: const [
        ProfileListener(),
      ],
      child: BlocSelector<ProfileCubit, ProfileState, FullViewState>(
        selector: (state) => state.fullViewState,
        builder: (context, _) {
          if (cubit.state.fullViewState == FullViewState.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('Profile').am,
              actions: [
                IconButton(
                  onPressed: () => cubit.logout(),
                  icon: const Icon(
                    Icons.settings,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Builder(
                          builder: (context) {
                            const size = 52.0;
                            return InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primaryColor,
                                    radius: size,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: size - 2,
                                      child: CircleAvatar(
                                        radius: size - 4,
                                        backgroundImage: NetworkImage(
                                          cubit.state.current?.imageUrl ??
                                              "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          cubit.state.current?.userProfileName ?? "-",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          cubit.state.current?.email ?? '-',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          'Membership: Free',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  HS6(title: 'GENERAL'),
                  ListItem(
                    prefixIcon: Icons.person,
                    label: "Edit profile",
                    onTap: () async {
                      await router.push(UserProfileFormRoute(
                        id: state.session!.userProfileId!,
                      ));
                      cubit.initializeData();
                    },
                  ),
                  // ListItem(
                  //   prefixIcon: MdiIcons.starOutline,
                  //   label: "Rate us",
                  //   onTap: () {},
                  // ),
                  // ListItem(
                  //   prefixIcon: MdiIcons.starOutline,
                  //   label: "My Reviews",
                  //   onTap: () {},
                  // ),
                  // HS6(title: 'ABOUT APP'),
                  ListItem(
                    prefixIcon: MdiIcons.informationSlabBoxOutline,
                    label: 'About App',
                    onTap: () {
                      cubit.initializeData();
                    },
                  ),
                  ListItem(
                    prefixIcon: MdiIcons.security,
                    label: 'Privacy Policy',
                    onTap: () {},
                  ),
                  ListItem(
                    prefixIcon: MdiIcons.post,
                    label: 'Terms & Conditions',
                    onTap: () {},
                  ),
                  ListItem(
                    prefixIcon: MdiIcons.chatQuestionOutline,
                    label: 'Help & Support',
                    onTap: () {},
                  ),
                  ListItem(
                    prefixIcon: MdiIcons.developerBoard,
                    label: 'Developer',
                    onTap: () {
                      router.push(DevDashboardRoute());
                    },
                  ),
                  // ListItem(
                  //   prefixIcon: MdiIcons.phoneRingOutline,
                  //   label: "Helpline Number",
                  //   onTap: () {},
                  // ),
                  HS6(title: 'Settings'),
                  Builder(builder: (context) {
                    var mainCubit = sl<MainCubit>();
                    var localizationManager = sl<LocalizationManager>();
                    var themeManager = sl<ThemeManager>();

                    var current = localizationManager
                        .locales[mainCubit.state.langIndex].languageCode;

                    var currentTheme =
                        themeManager.themes[mainCubit.state.themeIndex];

                    return Column(
                      children: [
                        ListItem(
                          prefixIcon: MdiIcons.flagOutline,
                          label: 'Change Language (${current})',
                          onTap: () {
                            var index = mainCubit.state.langIndex;

                            if (index + 1 >=
                                localizationManager.locales.length) {
                              index = 0;
                            } else {
                              index++;
                            }

                            mainCubit.updateLanguage(index);
                          },
                        ),
                        ListItem(
                          prefixIcon: MdiIcons.palette,
                          label: 'Themes (${currentTheme})',
                          onTap: () {
                            var index = mainCubit.state.themeIndex;

                            if (index + 1 >= themeManager.themes.length) {
                              index = 0;
                            } else {
                              index++;
                            }

                            mainCubit.updateTheme(index);
                          },
                        ),
                      ],
                    );
                  }),
                  // HS6(title: 'DANGER ZONE'),
                  // ListItem(
                  //   prefixIcon: MdiIcons.accountRemoveOutline,
                  //   label: "Delete Account",
                  //   onTap: () {},
                  // ),
                  ListItem(
                    prefixIcon: MdiIcons.logout,
                    label: 'Logout',
                    onTap: () => cubit.logout(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ).amx,
            ),
          );
        },
      ),
    );
  }
}
