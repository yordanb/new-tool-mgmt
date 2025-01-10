import 'package:hyper_supabase/core.dart';

abstract class ApplicationConfigListCubit
    extends Cubit<ApplicationConfigListState> {
  ApplicationConfigListCubit(ApplicationConfigListState state) : super(state);

  void initState({
    Function? init,
  });

  void dispose();
  void ready();

  void initializeData();

  Future getData();

  Future<void> delete(int id);

  Future<void> deleteAll();

  bool get isFilterMode;

  void resetFilter();

  Future<void> refresh();

  void updateFilter();

  void loadMore();

  void reload();
}
