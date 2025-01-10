import 'package:hyper_supabase/core.dart';

class AppQueueRepositoryImpl implements AppQueueRepository {
  final AppQueueLocalDataSource localDataSource;

  AppQueueRepositoryImpl({
    required this.localDataSource,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    return await localDataSource.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      userProfileId: userProfileId,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue,
      action: action,
      actionData: actionData,
      appMode: appMode,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }

  Future<List<AppQueueEntity>> getAll({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    final models = await localDataSource.getAll(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      userProfileId: userProfileId,
      userProfileIdOperatorAndValue: userProfileIdOperatorAndValue,
      action: action,
      actionData: actionData,
      appMode: appMode,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  Future<AppQueueEntity?> get(int id) async {
    try {
      final model = await localDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<AppQueueEntity?> create({
    int? userProfileId,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? createdAt,
  }) async {
    try {
      final model = await localDataSource.create(
        //@ OFFLINE_MODE_ONLY
        id: -1,
        //:@ OFFLINE_MODE_ONLY
        userProfileId: userProfileId, action: action, actionData: actionData,
        appMode: appMode, createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    int? userProfileId,
    String? action,
    String? actionData,
    String? appMode,
    DateTime? updatedAt,
  }) async {
    try {
      await localDataSource.update(
        id: id,
        userProfileId: userProfileId,
        action: action,
        actionData: actionData,
        appMode: appMode,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await localDataSource.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> deleteAll() async {
    try {
      await localDataSource.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> syncronize({
    bool forceSyncronize = false,
  }) async {}
}
