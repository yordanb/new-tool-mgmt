// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

/// generated route for
/// [LoginView]

class LoginRouteArgs {
  final Key? key;

  const LoginRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, }';
  }
}

class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoginRouteArgs>(orElse: () => LoginRouteArgs());
      return LoginView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [RegisterView]

class RegisterRouteArgs {
  final Key? key;

  const RegisterRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, }';
  }
}

class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<RegisterRouteArgs>(orElse: () => RegisterRouteArgs());
      return RegisterView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [ResetPasswordView]

class ResetPasswordRouteArgs {
  final Key? key;

  const ResetPasswordRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, }';
  }
}

class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ResetPasswordRouteArgs>(
          orElse: () => ResetPasswordRouteArgs());
      return ResetPasswordView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [DevDashboardView]

class DevDashboardRouteArgs {
  final Key? key;

  const DevDashboardRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'DevDashboardRouteArgs{key: $key, }';
  }
}

class DevDashboardRoute extends PageRouteInfo<DevDashboardRouteArgs> {
  DevDashboardRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DevDashboardRoute.name,
          args: DevDashboardRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'DevDashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DevDashboardRouteArgs>(
          orElse: () => DevDashboardRouteArgs());
      return DevDashboardView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [EditProfileView]

class EditProfileRouteArgs {
  final Key? key;
  final int? id;

  const EditProfileRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, id: $id,}';
  }
}

class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<EditProfileRouteArgs>(
          orElse: () => EditProfileRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return EditProfileView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [MainNavigationView]

class MainNavigationRouteArgs {
  final Key? key;

  const MainNavigationRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'MainNavigationRouteArgs{key: $key, }';
  }
}

class MainNavigationRoute extends PageRouteInfo<MainNavigationRouteArgs> {
  MainNavigationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainNavigationRoute.name,
          args: MainNavigationRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'MainNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MainNavigationRouteArgs>(
          orElse: () => MainNavigationRouteArgs());
      return MainNavigationView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [ProfileView]

class ProfileRouteArgs {
  final Key? key;

  const ProfileRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, }';
  }
}

class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<ProfileRouteArgs>(orElse: () => ProfileRouteArgs());
      return ProfileView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [SettingView]

class SettingRouteArgs {
  final Key? key;

  const SettingRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key, }';
  }
}

class SettingRoute extends PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<SettingRouteArgs>(orElse: () => SettingRouteArgs());
      return SettingView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [ApplicationConfigFormView]

class ApplicationConfigFormRouteArgs {
  final Key? key;
  final int? id;

  const ApplicationConfigFormRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'ApplicationConfigFormRouteArgs{key: $key, id: $id,}';
  }
}

class ApplicationConfigFormRoute
    extends PageRouteInfo<ApplicationConfigFormRouteArgs> {
  ApplicationConfigFormRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          ApplicationConfigFormRoute.name,
          args: ApplicationConfigFormRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'ApplicationConfigFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ApplicationConfigFormRouteArgs>(
          orElse: () => ApplicationConfigFormRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return ApplicationConfigFormView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [ApplicationConfigListView]

class ApplicationConfigListRouteArgs {
  final Key? key;

  const ApplicationConfigListRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'ApplicationConfigListRouteArgs{key: $key, }';
  }
}

class ApplicationConfigListRoute
    extends PageRouteInfo<ApplicationConfigListRouteArgs> {
  ApplicationConfigListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ApplicationConfigListRoute.name,
          args: ApplicationConfigListRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'ApplicationConfigListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ApplicationConfigListRouteArgs>(
          orElse: () => ApplicationConfigListRouteArgs());
      return ApplicationConfigListView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [LoanTransactionFormView]

class LoanTransactionFormRouteArgs {
  final Key? key;
  final int? id;

  const LoanTransactionFormRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'LoanTransactionFormRouteArgs{key: $key, id: $id,}';
  }
}

class LoanTransactionFormRoute
    extends PageRouteInfo<LoanTransactionFormRouteArgs> {
  LoanTransactionFormRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          LoanTransactionFormRoute.name,
          args: LoanTransactionFormRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'LoanTransactionFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoanTransactionFormRouteArgs>(
          orElse: () => LoanTransactionFormRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return LoanTransactionFormView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [LoanTransactionListView]

class LoanTransactionListRouteArgs {
  final Key? key;

  const LoanTransactionListRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'LoanTransactionListRouteArgs{key: $key, }';
  }
}

class LoanTransactionListRoute
    extends PageRouteInfo<LoanTransactionListRouteArgs> {
  LoanTransactionListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoanTransactionListRoute.name,
          args: LoanTransactionListRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'LoanTransactionListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoanTransactionListRouteArgs>(
          orElse: () => LoanTransactionListRouteArgs());
      return LoanTransactionListView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [LoanTransactionItemFormView]

class LoanTransactionItemFormRouteArgs {
  final Key? key;
  final int? id;

  const LoanTransactionItemFormRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'LoanTransactionItemFormRouteArgs{key: $key, id: $id,}';
  }
}

class LoanTransactionItemFormRoute
    extends PageRouteInfo<LoanTransactionItemFormRouteArgs> {
  LoanTransactionItemFormRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          LoanTransactionItemFormRoute.name,
          args: LoanTransactionItemFormRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'LoanTransactionItemFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoanTransactionItemFormRouteArgs>(
          orElse: () => LoanTransactionItemFormRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return LoanTransactionItemFormView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [LoanTransactionItemListView]

class LoanTransactionItemListRouteArgs {
  final Key? key;

  const LoanTransactionItemListRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'LoanTransactionItemListRouteArgs{key: $key, }';
  }
}

class LoanTransactionItemListRoute
    extends PageRouteInfo<LoanTransactionItemListRouteArgs> {
  LoanTransactionItemListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoanTransactionItemListRoute.name,
          args: LoanTransactionItemListRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'LoanTransactionItemListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LoanTransactionItemListRouteArgs>(
          orElse: () => LoanTransactionItemListRouteArgs());
      return LoanTransactionItemListView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [ToolFormView]

class ToolFormRouteArgs {
  final Key? key;
  final int? id;

  const ToolFormRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'ToolFormRouteArgs{key: $key, id: $id,}';
  }
}

class ToolFormRoute extends PageRouteInfo<ToolFormRouteArgs> {
  ToolFormRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          ToolFormRoute.name,
          args: ToolFormRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'ToolFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ToolFormRouteArgs>(
          orElse: () => ToolFormRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return ToolFormView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [ToolListView]

class ToolListRouteArgs {
  final Key? key;

  const ToolListRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'ToolListRouteArgs{key: $key, }';
  }
}

class ToolListRoute extends PageRouteInfo<ToolListRouteArgs> {
  ToolListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ToolListRoute.name,
          args: ToolListRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'ToolListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args =
          data.argsAs<ToolListRouteArgs>(orElse: () => ToolListRouteArgs());
      return ToolListView(
        key: args.key,
      );
    },
  );
}

/// generated route for
/// [UserProfileFormView]

class UserProfileFormRouteArgs {
  final Key? key;
  final int? id;

  const UserProfileFormRouteArgs({
    this.key,
    this.id,
  });

  @override
  String toString() {
    return 'UserProfileFormRouteArgs{key: $key, id: $id,}';
  }
}

class UserProfileFormRoute extends PageRouteInfo<UserProfileFormRouteArgs> {
  UserProfileFormRoute({
    Key? key,
    int? id,
    List<PageRouteInfo>? children,
  }) : super(
          UserProfileFormRoute.name,
          args: UserProfileFormRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {
            'id': id,
          },
          initialChildren: children,
        );

  static const String name = 'UserProfileFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserProfileFormRouteArgs>(
          orElse: () => UserProfileFormRouteArgs(
                id: pathParams.optInt('id'),
              ));
      return UserProfileFormView(
        key: args.key,
        id: args.id,
      );
    },
  );
}

/// generated route for
/// [UserProfileListView]

class UserProfileListRouteArgs {
  final Key? key;

  const UserProfileListRouteArgs({
    this.key,
  });

  @override
  String toString() {
    return 'UserProfileListRouteArgs{key: $key, }';
  }
}

class UserProfileListRoute extends PageRouteInfo<UserProfileListRouteArgs> {
  UserProfileListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserProfileListRoute.name,
          args: UserProfileListRouteArgs(
            key: key,
          ),
          rawPathParams: {},
          initialChildren: children,
        );

  static const String name = 'UserProfileListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserProfileListRouteArgs>(
          orElse: () => UserProfileListRouteArgs());
      return UserProfileListView(
        key: args.key,
      );
    },
  );
}
