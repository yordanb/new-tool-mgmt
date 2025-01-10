import 'package:hyper_supabase/core.dart';

class LoanTransactionRepositoryImpl implements LoanTransactionRepository {
  final LoanTransactionRemoteDataSource remoteDataSource;
  final LoanTransactionLocalDataSource localDataSource;
  final NetworkManager networkManager;

  LoanTransactionRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkManager,
  });
  
  Future<int> count({int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: LoanTransactionRepositoryImpl count");
      return await localDataSource.count(
        id: id,
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      );
    }
    //:@ OFFLINE MODE HANDLER

    return await remoteDataSource.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }

  Future<List<LoanTransactionEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: LoanTransactionRepositoryImpl getAll");
      final models = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );

      return models.toEntityList();
    }
    //:@ OFFLINE MODE HANDLER

    final models = await remoteDataSource.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  //@ SNAPSHOT
  Stream<List<LoanTransactionEntity>> snapshot({
    int? id,
String? idOperatorAndValue, String? status, int? userProfileId,
String? userProfileIdOperatorAndValue, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async* {
    if (await networkManager.isOffline()) {
      // Offline mode: Ambil data dari localDataSource menggunakan getAll
      print("OfflineMode: LoanTransactionRepositoryImpl snapshot");
      final localData = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
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
idOperatorAndValue: idOperatorAndValue, status: status, userProfileId: userProfileId,
userProfileIdOperatorAndValue: userProfileIdOperatorAndValue, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );
      List<LoanTransaction> models = [];
      await for (List<Map<String, dynamic>> datas in stream) {
      for (var data in datas) {
        models.add(LoanTransaction.fromJson(data));
      }

      await localDataSource.deleteAll();
      for (var model in models) {
        await localDataSource.create(
          id: model.id!,
          status: model.status,userProfileId: model.userProfileId,createdAt: DateTime.now(),
        );
      }
      
      yield models.toEntityList();
    }
    }
  }
  //:@ SNAPSHOT

  Future<LoanTransactionEntity?> get(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionRepositoryImpl getByID $id");
        final model = await localDataSource.get(id);
        if(model==null) return null;
        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER
      
      final model = await remoteDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    }
    on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<LoanTransactionEntity?> create({
    String? status,
int? userProfileId,
DateTime? createdAt,
  }) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionRepositoryImpl create");
        final model = await localDataSource.create(
          id: -1,
          status: status,userProfileId: userProfileId,createdAt: createdAt,
        );

        await localDataSource.createQueue(
          queueAction: QueueAction.create,
          data: model!,
        );
        
        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER
      
      final model = await remoteDataSource.create(
        
        status: status,userProfileId: userProfileId,createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
String? status,
int? userProfileId,
DateTime? updatedAt,
  }) async { 
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionRepositoryImpl update $id");
        await localDataSource.update(
          id: id,status: status,userProfileId: userProfileId,updatedAt: updatedAt,
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
        id: id,status: status,userProfileId: userProfileId,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
         printo("OfflineMode: LoanTransactionRepositoryImpl delete $id");

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
        printo("OfflineMode: LoanTransactionRepositoryImpl deleteAll");
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
        var data = LoanTransaction.fromJson(task['data']);
        var id = task['id'];

        switch (action) {
          case 'create':
            await remoteDataSource.create(
              status: data.status,userProfileId: data.userProfileId,createdAt: data.createdAt,
            );
            break;
          case 'update':
            await remoteDataSource.update(
              id: data.id!,status: data.status,userProfileId: data.userProfileId,updatedAt: data.updatedAt,
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
