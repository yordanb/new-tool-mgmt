import 'package:hyper_supabase/core.dart';

class ToolRemoteDataSourceImpl implements ToolRemoteDataSource {
  final SupabaseClient client;
  final RandomDataGenerator r;

  ToolRemoteDataSourceImpl({
    required this.client,
    required this.r,
  });

  Future<int> count({
    int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo
  }) async {
    var query = client
      .from('tool')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (name != null) {
  query = query.eq('name', name);
}
if (description != null) {
  query = query.eq('description', description);
}
if (imageUrl != null) {
  query = query.eq('image_url', imageUrl);
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

  Future<List<Tool>> getAll({
    int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    var query = client
      .from('tool')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (name != null) {
  query = query.eq('name', name);
}
if (description != null) {
  query = query.eq('description', description);
}
if (imageUrl != null) {
  query = query.eq('image_url', imageUrl);
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

    List<Tool> result = [];
    for (var item in response!) {
      result.add(Tool.fromJson(item));
    }
    return result;
  }

  Stream snapshot({
    int? id,
String? idOperatorAndValue, String? name, String? description, String? imageUrl, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    var query = client
      .from('tool')
      .select(
"""
*
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (name != null) {
  query = query.eq('name', name);
}
if (description != null) {
  query = query.eq('description', description);
}
if (imageUrl != null) {
  query = query.eq('image_url', imageUrl);
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

  Future<Tool?> get(int id) async {
    final response = await client
        .from('tool')
        .select(
  """
  *
  """,
    )
        .eq('id', id).exec();
    if (response == null) return null;
    if (response.isEmpty) return null;
    return Tool.fromJson(response.first);
  }

  Future<Tool?> create({int? id, String? name,
String? description,
String? imageUrl,
DateTime? createdAt,}) async {
    try {
      var value = {
        'name': name,
        'description': description,
        'image_url': imageUrl,
        'created_at': createdAt?.yMdkkmmss,
      };
      value.removeWhere((key, value) => value == null);
      
      var values = await client
          .from('tool')
          .insert([value])
          .select()
          .exec();
      
      if (values == null) return null;
      if (values.isEmpty) return null;

      return Tool.fromJson(values.first);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({required int id,
String? name,
String? description,
String? imageUrl,
DateTime? updatedAt,}) async {
    try {
      //@BEFORE_UPDATE
      var current = await get(id);
      if (current == null) return null;

      var value = { 
        'name': name ?? current.name,
'description': description ?? current.description,
'image_url': imageUrl ?? current.imageUrl,
        'updated_at':( updatedAt ?? DateTime.now()).yMdkkmmss, 
      };
      value.removeWhere((key, value) => value == null);
      
      await client
          .from('tool')
          .update(value)
          .eq('id', id).exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await client
          .from('tool')
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
          .from('tool')
          .delete().neq('id', -1)
          .exec();;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

}
