import 'package:hyper_supabase/core.dart';

class LoanTransactionItemRemoteDataSourceImpl implements LoanTransactionItemRemoteDataSource {
  final SupabaseClient client;
  final RandomDataGenerator r;

  LoanTransactionItemRemoteDataSourceImpl({
    required this.client,
    required this.r,
  });

  Future<int> count({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo
  }) async {
    var query = client
      .from('loan_transaction_item')
      .select(
"""
*,
loan_transaction!inner(*,user_profile!inner(*)),
tool!inner(*)
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (loanTransactionId != null) {
  query = query.eq('loan_transaction_id', loanTransactionId);
}
if (toolId != null) {
  query = query.eq('tool_id', toolId);
}
if (qtyOperatorAndValue != null) {
  query = query.eqo('qty', qtyOperatorAndValue);
}
if (memo != null) {
  query = query.eq('memo', memo);
}
if (status != null) {
  query = query.eq('status', status);
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

  Future<List<LoanTransactionItem>> getAll({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    var query = client
      .from('loan_transaction_item')
      .select(
"""
*,
loan_transaction!inner(*,user_profile!inner(*)),
tool!inner(*)
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (loanTransactionId != null) {
  query = query.eq('loan_transaction_id', loanTransactionId);
}
if (toolId != null) {
  query = query.eq('tool_id', toolId);
}
if (qtyOperatorAndValue != null) {
  query = query.eqo('qty', qtyOperatorAndValue);
}
if (memo != null) {
  query = query.eq('memo', memo);
}
if (status != null) {
  query = query.eq('status', status);
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

    List<LoanTransactionItem> result = [];
    for (var item in response!) {
      result.add(LoanTransactionItem.fromJson(item));
    }
    return result;
  }

  Stream snapshot({
    int? id,
String? idOperatorAndValue, int? loanTransactionId,
String? loanTransactionIdOperatorAndValue, int? toolId,
String? toolIdOperatorAndValue, double? qty,
String? qtyOperatorAndValue, String? memo, String? status, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    var query = client
      .from('loan_transaction_item')
      .select(
"""
*,
loan_transaction!inner(*,user_profile!inner(*)),
tool!inner(*)
""",
  );

  if (idOperatorAndValue != null) {
  query = query.eqo('id', idOperatorAndValue);
}
if (loanTransactionId != null) {
  query = query.eq('loan_transaction_id', loanTransactionId);
}
if (toolId != null) {
  query = query.eq('tool_id', toolId);
}
if (qtyOperatorAndValue != null) {
  query = query.eqo('qty', qtyOperatorAndValue);
}
if (memo != null) {
  query = query.eq('memo', memo);
}
if (status != null) {
  query = query.eq('status', status);
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

  Future<LoanTransactionItem?> get(int id) async {
    final response = await client
        .from('loan_transaction_item')
        .select(
  """
  *,
loan_transaction!inner(*,user_profile!inner(*)),
tool!inner(*)
  """,
    )
        .eq('id', id).exec();
    if (response == null) return null;
    if (response.isEmpty) return null;
    return LoanTransactionItem.fromJson(response.first);
  }

  Future<LoanTransactionItem?> create({int? id, int? loanTransactionId,
int? toolId,
double? qty,
String? memo,
String? status,
DateTime? createdAt,}) async {
    try {
      var value = {
        'loan_transaction_id': loanTransactionId ?? 0,
        'tool_id': toolId ?? 0,
        'qty': qty ?? 0,
        'memo': memo,
        'status': status,
        'created_at': createdAt?.yMdkkmmss,
      };
      value.removeWhere((key, value) => value == null);
      
      var values = await client
          .from('loan_transaction_item')
          .insert([value])
          .select()
          .exec();
      
      if (values == null) return null;
      if (values.isEmpty) return null;

      return LoanTransactionItem.fromJson(values.first);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({required int id,
int? loanTransactionId,
int? toolId,
double? qty,
String? memo,
String? status,
DateTime? updatedAt,}) async {
    try {
      //@BEFORE_UPDATE
      var current = await get(id);
      if (current == null) return null;

      var value = { 
        'loan_transaction_id': loanTransactionId ?? current.loanTransactionId,
'tool_id': toolId ?? current.toolId,
'qty': qty ?? current.qty,
'memo': memo ?? current.memo,
'status': status ?? current.status,
        'updated_at':( updatedAt ?? DateTime.now()).yMdkkmmss, 
      };
      value.removeWhere((key, value) => value == null);
      
      await client
          .from('loan_transaction_item')
          .update(value)
          .eq('id', id).exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await client
          .from('loan_transaction_item')
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
          .from('loan_transaction_item')
          .delete().neq('id', -1)
          .exec();;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

}
