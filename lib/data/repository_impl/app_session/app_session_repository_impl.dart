import 'package:hyper_supabase/core.dart';

class AppSessionRepositoryImpl implements AppSessionRepository {
  final AppSessionLocalDataSource localDataSource;

  AppSessionRepositoryImpl({
    required this.localDataSource,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? role,
    String? email,
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
      role: role,
      email: email,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }

  Future<List<AppSessionEntity>> getAll({
    int? id,
    String? idOperatorAndValue,
    int? userProfileId,
    String? userProfileIdOperatorAndValue,
    String? role,
    String? email,
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
      role: role,
      email: email,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  Future<AppSessionEntity?> get(int id) async {
    try {
      final model = await localDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<AppSessionEntity?> create({
    int? userProfileId,
    String? role,
    String? email,
    DateTime? createdAt,
  }) async {
    try {
      final model = await localDataSource.create(
        //@ OFFLINE_MODE_ONLY
        id: -1,
        //:@ OFFLINE_MODE_ONLY
        userProfileId: userProfileId, role: role, email: email,
        createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    int? userProfileId,
    String? role,
    String? email,
    DateTime? updatedAt,
  }) async {
    try {
      await localDataSource.update(
        id: id,
        userProfileId: userProfileId,
        role: role,
        email: email,
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
