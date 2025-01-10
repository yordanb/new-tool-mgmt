import 'package:hyper_supabase/core.dart';

class LoanTransactionItemRepositoryImpl implements LoanTransactionItemRepository {
  final LoanTransactionItemRemoteDataSource remoteDataSource;
  final LoanTransactionItemLocalDataSource localDataSource;
  final NetworkManager networkManager;

  LoanTransactionItemRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkManager,
  });
  
  Future<int> count({int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: LoanTransactionItemRepositoryImpl count");
      return await localDataSource.count(
        id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      );
    }
    //:@ OFFLINE MODE HANDLER

    return await remoteDataSource.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }

  Future<List<LoanTransactionItemEntity>> getAll({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: LoanTransactionItemRepositoryImpl getAll");
      final models = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
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
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  //@ SNAPSHOT
  Stream<List<LoanTransactionItemEntity>> snapshot({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, int? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async* {
    if (await networkManager.isOffline()) {
      // Offline mode: Ambil data dari localDataSource menggunakan getAll
      print("OfflineMode: LoanTransactionItemRepositoryImpl snapshot");
      final localData = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
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
idOperatorAndValue: idOperatorAndValue, loanTransactionId: loanTransactionId,
loanTransactionIdOperatorAndValue: loanTransactionIdOperatorAndValue, toolId: toolId,
toolIdOperatorAndValue: toolIdOperatorAndValue, qty: qty,
qtyOperatorAndValue: qtyOperatorAndValue, memo: memo, status: status, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );
      List<LoanTransactionItem> models = [];
      await for (List<Map<String, dynamic>> datas in stream) {
      for (var data in datas) {
        models.add(LoanTransactionItem.fromJson(data));
      }

      await localDataSource.deleteAll();
      for (var model in models) {
        await localDataSource.create(
          id: model.id!,
          loanTransactionId: model.loanTransactionId,toolId: model.toolId,qty: model.qty,memo: model.memo,status: model.status,createdAt: DateTime.now(),
        );
      }
      
      yield models.toEntityList();
    }
    }
  }
  //:@ SNAPSHOT

  Future<LoanTransactionItemEntity?> get(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionItemRepositoryImpl getByID $id");
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

  Future<LoanTransactionItemEntity?> create({
    int? loanTransactionId,
int? toolId,
int? qty,
String? memo,
String? status,
DateTime? createdAt,
  }) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionItemRepositoryImpl create");
        final model = await localDataSource.create(
          id: -1,
          loanTransactionId: loanTransactionId,toolId: toolId,qty: qty,memo: memo,status: status,createdAt: createdAt,
        );

        await localDataSource.createQueue(
          queueAction: QueueAction.create,
          data: model!,
        );
        
        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER
      
      final model = await remoteDataSource.create(
        
        loanTransactionId: loanTransactionId,toolId: toolId,qty: qty,memo: memo,status: status,createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
int? loanTransactionId,
int? toolId,
int? qty,
String? memo,
String? status,
DateTime? updatedAt,
  }) async { 
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: LoanTransactionItemRepositoryImpl update $id");
        await localDataSource.update(
          id: id,loanTransactionId: loanTransactionId,toolId: toolId,qty: qty,memo: memo,status: status,updatedAt: updatedAt,
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
        id: id,loanTransactionId: loanTransactionId,toolId: toolId,qty: qty,memo: memo,status: status,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
         printo("OfflineMode: LoanTransactionItemRepositoryImpl delete $id");

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
        printo("OfflineMode: LoanTransactionItemRepositoryImpl deleteAll");
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
        var data = LoanTransactionItem.fromJson(task['data']);
        var id = task['id'];

        switch (action) {
          case 'create':
            await remoteDataSource.create(
              loanTransactionId: data.loanTransactionId,toolId: data.toolId,qty: data.qty,memo: data.memo,status: data.status,createdAt: data.createdAt,
            );
            break;
          case 'update':
            await remoteDataSource.update(
              id: data.id!,loanTransactionId: data.loanTransactionId,toolId: data.toolId,qty: data.qty,memo: data.memo,status: data.status,updatedAt: data.updatedAt,
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
