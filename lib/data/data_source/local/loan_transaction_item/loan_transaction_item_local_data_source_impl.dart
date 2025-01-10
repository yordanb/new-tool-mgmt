import 'package:hyper_supabase/core.dart';

class LoanTransactionItemLocalDataSourceImpl
    implements LoanTransactionItemLocalDataSource {
  final SharedPreferences prefs;

  LoanTransactionItemLocalDataSourceImpl({
    required this.prefs,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    int? loanTransactionId,
    String? loanTransactionIdOperatorAndValue,
    int? toolId,
    String? toolIdOperatorAndValue,
    double? qty,
    String? qtyOperatorAndValue,
    String? memo,
    String? status,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    final jsonList = await prefs.getString('loan_transaction_item') ?? "[]";
    final values = jsonDecode(jsonList);
    return values.length;
  }

  Future<List<LoanTransactionItem>> getAll({
    int? id,
    String? idOperatorAndValue,
    int? loanTransactionId,
    String? loanTransactionIdOperatorAndValue,
    int? toolId,
    String? toolIdOperatorAndValue,
    double? qty,
    String? qtyOperatorAndValue,
    String? memo,
    String? status,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    final jsonList = await prefs.getString('loan_transaction_item') ?? "[]";
    final values = jsonDecode(jsonList);

    List<LoanTransactionItem> modelValues = [];
    for (var value in values) {
      modelValues.add(LoanTransactionItem.fromJson(value));
    }
    return modelValues;
  }

  Future<LoanTransactionItem?> get(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return modelValues[index];
  }

  Future<LoanTransactionItem?> create({
    int? id,
    int? loanTransactionId,
    int? toolId,
    double? qty,
    String? memo,
    String? status,
    DateTime? createdAt,
  }) async {
    final modelValues = await getAll();
    final newModel = LoanTransactionItem(
      id: id,
      loanTransactionId: loanTransactionId,
      toolId: toolId,
      qty: qty,
      memo: memo,
      status: status,
      createdAt: createdAt ?? DateTime.now(),
    );
    modelValues.add(newModel);

    await prefs.setString('loan_transaction_item', modelValues.toJsonEncoded());
    return newModel;
  }

  Future<void> update({
    required int id,
    int? loanTransactionId,
    int? toolId,
    double? qty,
    String? memo,
    String? status,
    DateTime? updatedAt,
  }) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    modelValues[index] = modelValues[index].copyWith(
      id: id,
      loanTransactionId: loanTransactionId,
      toolId: toolId,
      qty: qty,
      memo: memo,
      status: status,
      updatedAt: DateTime.now(),
    );

    await prefs.setString('loan_transaction_item', modelValues.toJsonEncoded());
  }

  Future<void> delete(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return;
    }

    modelValues.removeAt(index);
    await prefs.setString('loan_transaction_item', modelValues.toJsonEncoded());
  }

  Future<void> deleteAll() async {
    await prefs.setString('loan_transaction_item', jsonEncode([]));
  }

  Future<void> createQueue({
    required QueueAction queueAction,
    required LoanTransactionItem data,
  }) async {
    printg("createQueue: $queueAction");

    String jsonList =
        await prefs.getString('loan_transaction_item_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.add({
      "id": const Uuid().v4(),
      "action": queueAction.toString().split(".").last,
      "data": data.toJson(),
      "created_at": DateTime.now().toString(),
    });
    await prefs.setString(
        'loan_transaction_item_queued_tasks', jsonEncode(values));
  }

  Future<List> getQueuedTasks() async {
    String jsonList =
        await prefs.getString('loan_transaction_item_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    return values;
  }

  Future<void> deleteQueuedTask(String id) async {
    String jsonList =
        await prefs.getString('loan_transaction_item_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.removeWhere((element) => element['id'] == id);
    await prefs.setString(
        'loan_transaction_item_queued_tasks', jsonEncode(values));
  }

  Future<bool> isRunningQueuedTask() async {
    bool isRunning =
        await prefs.getBool('loan_transaction_item_queued_tasks_running') ??
            false;
    return isRunning;
  }

  Future<void> startQueue() async {
    await prefs.setBool('loan_transaction_item_queued_tasks_running', true);
  }

  Future<void> stopQueue() async {
    await prefs.setBool('loan_transaction_item_queued_tasks_running', false);
  }
}
