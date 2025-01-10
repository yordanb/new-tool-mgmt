import 'package:hyper_supabase/core.dart';

class ApplicationConfigRepositoryImpl implements ApplicationConfigRepository {
  final ApplicationConfigRemoteDataSource remoteDataSource;
  final ApplicationConfigLocalDataSource localDataSource;
  final NetworkManager networkManager;

  ApplicationConfigRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkManager,
  });

  Future<int> count({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
  }) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: ApplicationConfigRepositoryImpl count");
      return await localDataSource.count(
        id: id,
        idOperatorAndValue: idOperatorAndValue,
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAtFrom: createdAtFrom,
        createdAtTo: createdAtTo,
        updatedAtFrom: updatedAtFrom,
        updatedAtTo: updatedAtTo,
      );
    }
    //:@ OFFLINE MODE HANDLER

    return await remoteDataSource.count(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      appMode: appMode,
      companyName: companyName,
      address: address,
      phoneNumber: phoneNumber,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
    );
  }

  Future<List<ApplicationConfigEntity>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: ApplicationConfigRepositoryImpl getAll");
      final models = await localDataSource.getAll(
        id: id,
        idOperatorAndValue: idOperatorAndValue,
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAtFrom: createdAtFrom,
        createdAtTo: createdAtTo,
        updatedAtFrom: updatedAtFrom,
        updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );

      return models.toEntityList();
    }
    //:@ OFFLINE MODE HANDLER

    final models = await remoteDataSource.getAll(
      id: id,
      idOperatorAndValue: idOperatorAndValue,
      appMode: appMode,
      companyName: companyName,
      address: address,
      phoneNumber: phoneNumber,
      createdAtFrom: createdAtFrom,
      createdAtTo: createdAtTo,
      updatedAtFrom: updatedAtFrom,
      updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  //@ SNAPSHOT
  Stream<List<ApplicationConfigEntity>> snapshot({
    int? id,
    String? idOperatorAndValue,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async* {
    if (await networkManager.isOffline()) {
      // Offline mode: Ambil data dari localDataSource menggunakan getAll
      print("OfflineMode: ApplicationConfigRepositoryImpl snapshot");
      final localData = await localDataSource.getAll(
        id: id,
        idOperatorAndValue: idOperatorAndValue,
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAtFrom: createdAtFrom,
        createdAtTo: createdAtTo,
        updatedAtFrom: updatedAtFrom,
        updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );
      yield localData.toEntityList();
      return;
    } else {
      // Online mode: Gunakan stream dari remoteDataSource
      var stream = remoteDataSource.snapshot(
        id: id,
        idOperatorAndValue: idOperatorAndValue,
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAtFrom: createdAtFrom,
        createdAtTo: createdAtTo,
        updatedAtFrom: updatedAtFrom,
        updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );
      List<ApplicationConfig> models = [];
      await for (List<Map<String, dynamic>> datas in stream) {
        for (var data in datas) {
          models.add(ApplicationConfig.fromJson(data));
        }

        await localDataSource.deleteAll();
        for (var model in models) {
          await localDataSource.create(
            id: model.id!,
            appMode: model.appMode,
            companyName: model.companyName,
            address: model.address,
            phoneNumber: model.phoneNumber,
            createdAt: DateTime.now(),
          );
        }

        yield models.toEntityList();
      }
    }
  }
  //:@ SNAPSHOT

  Future<ApplicationConfigEntity?> get(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: ApplicationConfigRepositoryImpl getByID $id");
        final model = await localDataSource.get(id);
        if (model == null) return null;
        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER

      final model = await remoteDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<ApplicationConfigEntity?> create({
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAt,
  }) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: ApplicationConfigRepositoryImpl create");
        final model = await localDataSource.create(
          id: -1,
          appMode: appMode,
          companyName: companyName,
          address: address,
          phoneNumber: phoneNumber,
          createdAt: createdAt,
        );

        await localDataSource.createQueue(
          queueAction: QueueAction.create,
          data: model!,
        );

        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER

      final model = await remoteDataSource.create(
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? updatedAt,
  }) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: ApplicationConfigRepositoryImpl update $id");
        await localDataSource.update(
          id: id,
          appMode: appMode,
          companyName: companyName,
          address: address,
          phoneNumber: phoneNumber,
          updatedAt: updatedAt,
        );

        var model = await localDataSource.get(id);
        await localDataSource.createQueue(
          queueAction: QueueAction.update,
          data: model!,
        );

        return;
      }
      //:@ OFFLINE MODE HANDLER

      await remoteDataSource.update(
        id: id,
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: ApplicationConfigRepositoryImpl delete $id");

        var model = await localDataSource.get(
          id,
        );

        await localDataSource.delete(
          id,
        );

        await localDataSource.createQueue(
          queueAction: QueueAction.delete,
          data: model!,
        );

        return;
      }
      //:@ OFFLINE MODE HANDLER

      await remoteDataSource.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> deleteAll() async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: ApplicationConfigRepositoryImpl deleteAll");
        await localDataSource.deleteAll();
        return;
      }
      //:@ OFFLINE MODE HANDLER

      await remoteDataSource.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> syncronize({
    bool forceSyncronize = false,
  }) async {
    //@ syncronize
    if (await networkManager.isOffline()) return;
    if (!forceSyncronize && await localDataSource.isRunningQueuedTask()) return;

    try {
      await localDataSource.startQueue();

      final tasks = await localDataSource.getQueuedTasks();

      for (var task in tasks) {
        var action = task['action'];
        var data = ApplicationConfig.fromJson(task['data']);
        var id = task['id'];

        switch (action) {
          case 'create':
            await remoteDataSource.create(
              appMode: data.appMode,
              companyName: data.companyName,
              address: data.address,
              phoneNumber: data.phoneNumber,
              createdAt: data.createdAt,
            );
            break;
          case 'update':
            await remoteDataSource.update(
              id: data.id!,
              appMode: data.appMode,
              companyName: data.companyName,
              address: data.address,
              phoneNumber: data.phoneNumber,
              updatedAt: data.updatedAt,
            );
            break;
          case 'delete':
            await remoteDataSource.delete(data.id!);
            break;
          default:
            break;
        }

        localDataSource.deleteQueuedTask(id);
        await Future.delayed(const Duration(milliseconds: 250));
      }

      await localDataSource.stopQueue();
    } on Exception catch (err) {
      printr("Error syncronizing queued tasks: $err");
      await localDataSource.stopQueue();
      throw Exception(err);
    }
    //:@ syncronize
  }
}
