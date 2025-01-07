import 'package:hyper_supabase/core.dart';

abstract class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(RegisterState state) : super(state);

  /// Initialize state and data when the cubit is created.
  void initState({Function? init});

  /// Dispose of any resources or listeners.
  void dispose();

  /// Method that executes when the cubit is ready for use.
  void ready();

  /// Refreshes the current state and reloads data.
  void refresh();

  void register();
}
