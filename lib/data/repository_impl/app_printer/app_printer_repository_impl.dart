import 'package:hyper_supabase/core.dart';

class AppPrinterRepositoryImpl implements AppPrinterRepository {
  final AppPrinterLocalDataSource localDataSource;

  AppPrinterRepositoryImpl({
    required this.localDataSource,
  });
  
  Future<int> count({int? id,
String? idOperatorAndValue, String? message, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    

    return await localDataSource.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, message: message, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }

  Future<List<AppPrinterEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? message, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    

    final models = await localDataSource.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, message: message, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
    return models.toEntityList();
  }

  

  Future<AppPrinterEntity?> get(int id) async {
    try {
      
      
      final model = await localDataSource.get(id);
      if (model == null) return null;
      return model.toEntity();
    }
    on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<AppPrinterEntity?> create({
    String? message,
DateTime? createdAt,
  }) async {
    try {
      
      
      final model = await localDataSource.create(
        //@ OFFLINE_MODE_ONLY
        id: -1,
        //:@ OFFLINE_MODE_ONLY
        message: message,createdAt: createdAt,
      );
      return model!.toEntity();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
String? message,
DateTime? updatedAt,
  }) async { 
    try {
      
      
      await localDataSource.update(
        id: id,message: message,updatedAt: updatedAt,
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
  }) async {
    
  }
}
