import 'package:hyper_supabase/core.dart';

abstract class ApplicationConfigFormCubit
    extends Cubit<ApplicationConfigFormState> {
  ApplicationConfigFormCubit(ApplicationConfigFormState state) : super(state);

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
