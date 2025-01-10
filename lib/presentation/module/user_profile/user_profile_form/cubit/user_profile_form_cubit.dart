import 'package:hyper_supabase/core.dart';

abstract class UserProfileFormCubit extends Cubit<UserProfileFormState> {
  UserProfileFormCubit(UserProfileFormState state) : super(state);

  void initState({
    Function? init,
  });

  void dispose();

  void ready();

  void initializeData();
  Future<void> getData();
  Future<void> initialRandomValues();
  Future<void> create();
  Future<void> update();
  Future<void> refresh();
}
