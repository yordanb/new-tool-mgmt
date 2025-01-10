import 'package:hyper_supabase/core.dart';

abstract class LoanTransactionFormCubit
    extends Cubit<LoanTransactionFormState> {
  LoanTransactionFormCubit(LoanTransactionFormState state) : super(state);

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

  void updateTabFilter(String value);
  bool hasItem(ToolEntity item);
  void addItem(ToolEntity item);
  void removeItem(ToolEntity item);
  void updateStatus(ToolEntity item, String status);
  void updateMemo(ToolEntity item, String value);
  int getQty(ToolEntity item);
  String getStatus(ToolEntity item);
  String getMemo(ToolEntity item);
  void updateSearch(String value);
  void updateQty(ToolEntity item, int value);
}
