import 'package:hyper_supabase/core.dart';

class ToolLocalDataSourceImpl implements ToolLocalDataSource {
  final SharedPreferences prefs;

  ToolLocalDataSourceImpl({
    required this.prefs,
  });

  Future<int> count({int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    final jsonList = await prefs.getString('tool') ?? "[]";
    final values = jsonDecode(jsonList);
    return values.length;
  }

  Future<List<Tool>> getAll({
    int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    final jsonList = await prefs.getString('tool') ?? "[]";
    final values = jsonDecode(jsonList);

    List<Tool> modelValues = [];
    for (var value in values) {
      modelValues.add(Tool.fromJson(value));
    }
    return modelValues;
  }

  Future<Tool?> get(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return modelValues[index];
  }

  Future<Tool?> create({int? id, String? name,
String? description,
String? imageUrl,
DateTime? createdAt,}) async {
    final modelValues = await getAll();
    final newModel = Tool(
      id: id,
      name:name,
description:description,
imageUrl:imageUrl,
      createdAt: createdAt ?? DateTime.now(),
    );
    modelValues.add(newModel);

    await prefs.setString('tool', modelValues.toJsonEncoded());
    return newModel;
  }

  Future<void> update({required int id,
String? name,
String? description,
String? imageUrl,
DateTime? updatedAt,}) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    modelValues[index] = modelValues[index].copyWith(
      id: id,
      name:name,
description:description,
imageUrl:imageUrl,
      updatedAt: DateTime.now(),
    );

    await prefs.setString('tool', modelValues.toJsonEncoded());
  }

  Future<void> delete(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return;
    }

    modelValues.removeAt(index);
    await prefs.setString('tool', modelValues.toJsonEncoded());
  }

  Future<void> deleteAll() async {
    await prefs.setString('tool', jsonEncode([]));
  }

  Future<void> createQueue({
    required QueueAction queueAction,
    required Tool data,
  }) async {
    printg("createQueue: $queueAction");

    String jsonList =
        await prefs.getString('tool_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.add({
      "id": const Uuid().v4(),
      "action": queueAction.toString().split(".").last,
      "data": data.toJson(),
      "created_at": DateTime.now().toString(),
    });
    await prefs.setString(
        'tool_queued_tasks', jsonEncode(values));
  }

  Future<List> getQueuedTasks() async {
    String jsonList =
        await prefs.getString('tool_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    return values;
  }

  Future<void> deleteQueuedTask(String id) async {
    String jsonList =
        await prefs.getString('tool_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.removeWhere((element) => element['id'] == id);
    await prefs.setString(
        'tool_queued_tasks', jsonEncode(values));
  }

  Future<bool> isRunningQueuedTask() async {
    bool isRunning =
        await prefs.getBool('tool_queued_tasks_running') ?? false;
    return isRunning;
  }

  Future<void> startQueue() async {
    await prefs.setBool('tool_queued_tasks_running', true);
  }

  Future<void> stopQueue() async {
    await prefs.setBool('tool_queued_tasks_running', false);
  }

}
