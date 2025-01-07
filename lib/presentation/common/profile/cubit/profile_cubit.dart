import 'package:hyper_supabase/core.dart';

abstract class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(ProfileState state) : super(state);

  /// Initialize state and data when the cubit is created.
  void initState({Function? init});

  /// Dispose of any resources or listeners.
  void dispose();

  /// Method that executes when the cubit is ready for use.
  void ready();

  /// Method to initialize data.
  void initializeData();

  /// Refreshes the current state and reloads data.
  void refresh();

  void logout();
}
