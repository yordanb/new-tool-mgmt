import 'package:hyper_supabase/core.dart';

class ApplicationConfigRemoteDataSourceImpl implements ApplicationConfigRemoteDataSource {
  final SupabaseClient client;
  final RandomDataGenerator r;

  ApplicationConfigRemoteDataSourceImpl({
    required this.client,
    required this.r,
  });

  Future<int> count({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo
  }) async {
    var query = client
      .from('application_config')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (appMode != null) {
  query = query.eq('app_mode', appMode);
}
if (companyName != null && companyName.isNotEmpty) {
  query = query.ilike('company_name', '%$companyName%');
}
if (address != null) {
  query = query.eq('address', address);
}
if (phoneNumber != null) {
  query = query.eq('phone_number', phoneNumber);
}
if (createdAtFrom != null && createdAtTo != null) {
    final startOfDayFrom =
        DateTime(createdAtFrom.year, createdAtFrom.month, createdAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(createdAtTo.year, createdAtTo.month, createdAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('created_at', startOfDayFrom.toIso8601String())
        .lt('created_at', startOfDayTo.toIso8601String());
  }
if (updatedAtFrom != null && updatedAtTo != null) {
    final startOfDayFrom =
        DateTime(updatedAtFrom.year, updatedAtFrom.month, updatedAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(updatedAtTo.year, updatedAtTo.month, updatedAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('updated_at', startOfDayFrom.toIso8601String())
        .lt('updated_at', startOfDayTo.toIso8601String());
  }
    
    var response = await query.count();
    return response.count;
  }

  Future<List<ApplicationConfig>> getAll({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    var query = client
      .from('application_config')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (appMode != null) {
  query = query.eq('app_mode', appMode);
}
if (companyName != null && companyName.isNotEmpty) {
  query = query.ilike('company_name', '%$companyName%');
}
if (address != null) {
  query = query.eq('address', address);
}
if (phoneNumber != null) {
  query = query.eq('phone_number', phoneNumber);
}
if (createdAtFrom != null && createdAtTo != null) {
    final startOfDayFrom =
        DateTime(createdAtFrom.year, createdAtFrom.month, createdAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(createdAtTo.year, createdAtTo.month, createdAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('created_at', startOfDayFrom.toIso8601String())
        .lt('created_at', startOfDayTo.toIso8601String());
  }
if (updatedAtFrom != null && updatedAtTo != null) {
    final startOfDayFrom =
        DateTime(updatedAtFrom.year, updatedAtFrom.month, updatedAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(updatedAtTo.year, updatedAtTo.month, updatedAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('updated_at', startOfDayFrom.toIso8601String())
        .lt('updated_at', startOfDayTo.toIso8601String());
  }
    
    var response = await query
      .order('id', ascending: false)
      .range((page - 1) * limit, page * limit)
      .limit(limit)
      .exec();

    List<ApplicationConfig> result = [];
    for (var item in response!) {
      result.add(ApplicationConfig.fromJson(item));
    }
    return result;
  }

  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    var query = client
      .from('application_config')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (appMode != null) {
  query = query.eq('app_mode', appMode);
}
if (companyName != null && companyName.isNotEmpty) {
  query = query.ilike('company_name', '%$companyName%');
}
if (address != null) {
  query = query.eq('address', address);
}
if (phoneNumber != null) {
  query = query.eq('phone_number', phoneNumber);
}
if (createdAtFrom != null && createdAtTo != null) {
    final startOfDayFrom =
        DateTime(createdAtFrom.year, createdAtFrom.month, createdAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(createdAtTo.year, createdAtTo.month, createdAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('created_at', startOfDayFrom.toIso8601String())
        .lt('created_at', startOfDayTo.toIso8601String());
  }
if (updatedAtFrom != null && updatedAtTo != null) {
    final startOfDayFrom =
        DateTime(updatedAtFrom.year, updatedAtFrom.month, updatedAtFrom.day)
            .toUtc();
    final startOfDayTo =
        DateTime(updatedAtTo.year, updatedAtTo.month, updatedAtTo.day)
            .toUtc()
            .add(const Duration(days: 1));
    query = query
        .gte('updated_at', startOfDayFrom.toIso8601String())
        .lt('updated_at', startOfDayTo.toIso8601String());
  }
    
    return query
        .order('id', ascending: false)
        .range((page - 1) * limit, page * limit)
        .limit(limit)
        .snapshot();
  }

  Future<ApplicationConfig?> get(int id) async {
    final response = await client
        .from('application_config')
        .select(
  """
  *
  """,
    )
        .eq('id', id).exec();
    if (response == null) return null;
    if (response.isEmpty) return null;
    return ApplicationConfig.fromJson(response.first);
  }

  Future<ApplicationConfig?> create({int? id, String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? createdAt,}) async {
    try {
      var value = {
        'app_mode': appMode,
        'company_name': companyName,
        'address': address,
        'phone_number': phoneNumber,
        'created_at': createdAt?.yMdkkmmss,
      };
      value.removeWhere((key, value) => value == null);
      
      var values = await client
          .from('application_config')
          .insert([value])
          .select()
          .exec();
      
      if (values == null) return null;
      if (values.isEmpty) return null;

      return ApplicationConfig.fromJson(values.first);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({required int id,
String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? updatedAt,}) async {
    try {
      //@BEFORE_UPDATE
      var current = await get(id);
      if (current == null) return null;

      var value = { 
        'app_mode': appMode ?? current.appMode,
'company_name': companyName ?? current.companyName,
'address': address ?? current.address,
'phone_number': phoneNumber ?? current.phoneNumber,
        'updated_at':( updatedAt ?? DateTime.now()).yMdkkmmss, 
      };
      value.removeWhere((key, value) => value == null);
      
      await client
          .from('application_config')
          .update(value)
          .eq('id', id).exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await client
          .from('application_config')
          .delete()
          .eq('id', id)
          .exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> deleteAll() async {
    try {
      await client
          .from('application_config')
          .delete().neq('id', -1)
          .exec();;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

}
