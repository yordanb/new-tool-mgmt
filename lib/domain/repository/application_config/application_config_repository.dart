import 'package:hyper_supabase/core.dart';

abstract class ApplicationConfigRepository {
  Future<int> count({int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,});

  Future<List<ApplicationConfigEntity>> getAll({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });

  //@ SNAPSHOT
  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  });
  //:@ SNAPSHOT

  Future<ApplicationConfigEntity?> get(int id);

  Future<ApplicationConfigEntity?> create({
    String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? createdAt,
  });

  Future<void> update({
    required int id,
String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? updatedAt,
  });

  Future<void> delete(int id);

  Future<void> deleteAll();

  Future<void> syncronize({
    bool forceSyncronize = false,
  });
}
