import 'package:hyper_supabase/core.dart';

class AppSessionLocalDataSourceImpl implements AppSessionLocalDataSource {
  final SharedPreferences prefs;

  AppSessionLocalDataSourceImpl({
    required this.prefs,
  });

  Future<int> count({int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    final jsonList = await prefs.getString('app_session') ?? "[]";
    final values = jsonDecode(jsonList);
    return values.length;
  }

  Future<List<AppSession>> getAll({
    int? id,
String? idOperatorAndValue, int? userProfileId,
String? userProfileIdOperatorAndValue, String? role, String? email, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    final jsonList = await prefs.getString('app_session') ?? "[]";
    final values = jsonDecode(jsonList);

    List<AppSession> modelValues = [];
    for (var value in values) {
      modelValues.add(AppSession.fromJson(value));
    }
    return modelValues;
  }

  Future<AppSession?> get(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return modelValues[index];
  }

  Future<AppSession?> create({int? id, int? userProfileId,
String? role,
String? email,
DateTime? createdAt,}) async {
    final modelValues = await getAll();
    final newModel = AppSession(
      id: id,
      userProfileId:userProfileId,
role:role,
email:email,
      createdAt: createdAt ?? DateTime.now(),
    );
    modelValues.add(newModel);

    await prefs.setString('app_session', modelValues.toJsonEncoded());
    return newModel;
  }

  Future<void> update({required int id,
int? userProfileId,
String? role,
String? email,
DateTime? updatedAt,}) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    modelValues[index] = modelValues[index].copyWith(
      id: id,
      userProfileId:userProfileId,
role:role,
email:email,
      updatedAt: DateTime.now(),
    );

    await prefs.setString('app_session', modelValues.toJsonEncoded());
  }

  Future<void> delete(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return;
    }

    modelValues.removeAt(index);
    await prefs.setString('app_session', modelValues.toJsonEncoded());
  }

  Future<void> deleteAll() async {
    await prefs.setString('app_session', jsonEncode([]));
  }

  Future<void> createQueue({
    required QueueAction queueAction,
    required AppSession data,
  }) async {
    printg("createQueue: $queueAction");

    String jsonList =
        await prefs.getString('app_session_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.add({
      "id": const Uuid().v4(),
      "action": queueAction.toString().split(".").last,
      "data": data.toJson(),
      "created_at": DateTime.now().toString(),
    });
    await prefs.setString(
        'app_session_queued_tasks', jsonEncode(values));
  }

  Future<List> getQueuedTasks() async {
    String jsonList =
        await prefs.getString('app_session_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    return values;
  }

  Future<void> deleteQueuedTask(String id) async {
    String jsonList =
        await prefs.getString('app_session_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.removeWhere((element) => element['id'] == id);
    await prefs.setString(
        'app_session_queued_tasks', jsonEncode(values));
  }

  Future<bool> isRunningQueuedTask() async {
    bool isRunning =
        await prefs.getBool('app_session_queued_tasks_running') ?? false;
    return isRunning;
  }

  Future<void> startQueue() async {
    await prefs.setBool('app_session_queued_tasks_running', true);
  }

  Future<void> stopQueue() async {
    await prefs.setBool('app_session_queued_tasks_running', false);
  }

}
