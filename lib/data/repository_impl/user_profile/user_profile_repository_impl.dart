import 'package:hyper_supabase/core.dart';

class UserProfileRepositoryImpl implements UserProfileRepository {
  final UserProfileRemoteDataSource remoteDataSource;
  final UserProfileLocalDataSource localDataSource;
  final NetworkManager networkManager;

  UserProfileRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkManager,
  });
  
  Future<int> count({int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: UserProfileRepositoryImpl count");
      return await localDataSource.count(
        id: id,
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      );
    }
    //:@ OFFLINE MODE HANDLER

    return await remoteDataSource.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }

  Future<List<UserProfileEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    //@ OFFLINE MODE HANDLER
    if (await networkManager.isOffline()) {
      printo("OfflineMode: UserProfileRepositoryImpl getAll");
      final models = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
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
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  //@ SNAPSHOT
  Stream<List<UserProfileEntity>> snapshot({
    int? id,
String? idOperatorAndValue, String? imageUrl, String? userProfileName, String? gender, String? email, String? mobileNumber, String? fcmToken, String? password, String? role, bool? isActive, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async* {
    if (await networkManager.isOffline()) {
      // Offline mode: Ambil data dari localDataSource menggunakan getAll
      print("OfflineMode: UserProfileRepositoryImpl snapshot");
      final localData = await localDataSource.getAll(
        id: id,
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
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
idOperatorAndValue: idOperatorAndValue, imageUrl: imageUrl, userProfileName: userProfileName, gender: gender, email: email, mobileNumber: mobileNumber, fcmToken: fcmToken, password: password, role: role, isActive: isActive, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
        limit: limit,
        page: page,
      );
      List<UserProfile> models = [];
      await for (List<Map<String, dynamic>> datas in stream) {
      for (var data in datas) {
        models.add(UserProfile.fromJson(data));
      }

      await localDataSource.deleteAll();
      for (var model in models) {
        await localDataSource.create(
          id: model.id!,
          imageUrl: model.imageUrl,userProfileName: model.userProfileName,gender: model.gender,email: model.email,mobileNumber: model.mobileNumber,fcmToken: model.fcmToken,password: model.password,role: model.role,isActive: model.isActive,createdAt: DateTime.now(),
        );
      }
      
      yield models.toEntityList();
    }
    }
  }
  //:@ SNAPSHOT

  Future<UserProfileEntity?> get(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: UserProfileRepositoryImpl getByID $id");
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

  Future<UserProfileEntity?> create({
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
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: UserProfileRepositoryImpl create");
        final model = await localDataSource.create(
          id: -1,
          imageUrl: imageUrl,userProfileName: userProfileName,gender: gender,email: email,mobileNumber: mobileNumber,fcmToken: fcmToken,password: password,role: role,isActive: isActive,createdAt: createdAt,
        );

        await localDataSource.createQueue(
          queueAction: QueueAction.create,
          data: model!,
        );
        
        return model.toEntity();
      }
      //:@ OFFLINE MODE HANDLER
      
      final model = await remoteDataSource.create(
        
        imageUrl: imageUrl,userProfileName: userProfileName,gender: gender,email: email,mobileNumber: mobileNumber,fcmToken: fcmToken,password: password,role: role,isActive: isActive,createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
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
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
        printo("OfflineMode: UserProfileRepositoryImpl update $id");
        await localDataSource.update(
          id: id,imageUrl: imageUrl,userProfileName: userProfileName,gender: gender,email: email,mobileNumber: mobileNumber,fcmToken: fcmToken,password: password,role: role,isActive: isActive,updatedAt: updatedAt,
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
        id: id,imageUrl: imageUrl,userProfileName: userProfileName,gender: gender,email: email,mobileNumber: mobileNumber,fcmToken: fcmToken,password: password,role: role,isActive: isActive,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      //@ OFFLINE MODE HANDLER
      if (await networkManager.isOffline()) {
         printo("OfflineMode: UserProfileRepositoryImpl delete $id");

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
        printo("OfflineMode: UserProfileRepositoryImpl deleteAll");
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
        var data = UserProfile.fromJson(task['data']);
        var id = task['id'];

        switch (action) {
          case 'create':
            await remoteDataSource.create(
              imageUrl: data.imageUrl,userProfileName: data.userProfileName,gender: data.gender,email: data.email,mobileNumber: data.mobileNumber,fcmToken: data.fcmToken,password: data.password,role: data.role,isActive: data.isActive,createdAt: data.createdAt,
            );
            break;
          case 'update':
            await remoteDataSource.update(
              id: data.id!,imageUrl: data.imageUrl,userProfileName: data.userProfileName,gender: data.gender,email: data.email,mobileNumber: data.mobileNumber,fcmToken: data.fcmToken,password: data.password,role: data.role,isActive: data.isActive,updatedAt: data.updatedAt,
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
