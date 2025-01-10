import 'package:hyper_supabase/core.dart';

class UserProfileLocalDataSourceImpl implements UserProfileLocalDataSource {
  final SharedPreferences prefs;

  UserProfileLocalDataSourceImpl({
    required this.prefs,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    final jsonList = await prefs.getString('user_profile') ?? "[]";
    final values = jsonDecode(jsonList);
    return values.length;
  }

  Future<List<UserProfile>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    final jsonList = await prefs.getString('user_profile') ?? "[]";
    final values = jsonDecode(jsonList);

    List<UserProfile> modelValues = [];
    for (var value in values) {
      modelValues.add(UserProfile.fromJson(value));
    }
    return modelValues;
  }

  Future<UserProfile?> get(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    return modelValues[index];
  }

  Future<UserProfile?> create({
    int? id,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAt,
  }) async {
    final modelValues = await getAll();
    final newModel = UserProfile(
      id: id,
      imageUrl: imageUrl,
      userProfileName: userProfileName,
      gender: gender,
      email: email,
      mobileNumber: mobileNumber,
      fcmToken: fcmToken,
      password: password,
      role: role,
      isActive: isActive,
      createdAt: createdAt ?? DateTime.now(),
    );
    modelValues.add(newModel);

    await prefs.setString('user_profile', modelValues.toJsonEncoded());
    return newModel;
  }

  Future<void> update({
    required int id,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? updatedAt,
  }) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return null;
    }
    modelValues[index] = modelValues[index].copyWith(
      id: id,
      imageUrl: imageUrl,
      userProfileName: userProfileName,
      gender: gender,
      email: email,
      mobileNumber: mobileNumber,
      fcmToken: fcmToken,
      password: password,
      role: role,
      isActive: isActive,
      updatedAt: DateTime.now(),
    );

    await prefs.setString('user_profile', modelValues.toJsonEncoded());
  }

  Future<void> delete(int id) async {
    final modelValues = await getAll();
    var index = modelValues.indexWhere((element) => element.id == id);
    if (index == -1) {
      return;
    }

    modelValues.removeAt(index);
    await prefs.setString('user_profile', modelValues.toJsonEncoded());
  }

  Future<void> deleteAll() async {
    await prefs.setString('user_profile', jsonEncode([]));
  }

  Future<void> createQueue({
    required QueueAction queueAction,
    required UserProfile data,
  }) async {
    printg("createQueue: $queueAction");

    String jsonList =
        await prefs.getString('user_profile_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.add({
      "id": const Uuid().v4(),
      "action": queueAction.toString().split(".").last,
      "data": data.toJson(),
      "created_at": DateTime.now().toString(),
    });
    await prefs.setString('user_profile_queued_tasks', jsonEncode(values));
  }

  Future<List> getQueuedTasks() async {
    String jsonList =
        await prefs.getString('user_profile_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    return values;
  }

  Future<void> deleteQueuedTask(String id) async {
    String jsonList =
        await prefs.getString('user_profile_queued_tasks') ?? "[]";
    List values = jsonDecode(jsonList);
    values.removeWhere((element) => element['id'] == id);
    await prefs.setString('user_profile_queued_tasks', jsonEncode(values));
  }

  Future<bool> isRunningQueuedTask() async {
    bool isRunning =
        await prefs.getBool('user_profile_queued_tasks_running') ?? false;
    return isRunning;
  }

  Future<void> startQueue() async {
    await prefs.setBool('user_profile_queued_tasks_running', true);
  }

  Future<void> stopQueue() async {
    await prefs.setBool('user_profile_queued_tasks_running', false);
  }
}
