import 'package:hyper_supabase/core.dart';

class UserProfileRemoteDataSourceImpl implements UserProfileRemoteDataSource {
  final SupabaseClient client;
  final RandomDataGenerator r;

  UserProfileRemoteDataSourceImpl({
    required this.client,
    required this.r,
  });

  Future<int> count(
      {int? id,
      String? idOperatorAndValue,
      String? imageUrl,
      String? userProfileName,
      String? gender,
      String? email,
      String? mobileNumber,
      String? fcmToken,
      String? password,
      String? role,
      bool? isActive,
      DateTime? createdAtFrom,
      DateTime? createdAtTo,
      DateTime? updatedAtFrom,
      DateTime? updatedAtTo}) async {
    var query = client.from('user_profile').select(
      """
*
""",
    );

    if (idOperatorAndValue != null) {
      query = query.eqo('id', idOperatorAndValue);
    }
    if (imageUrl != null) {
      query = query.eq('image_url', imageUrl);
    }
    if (userProfileName != null && userProfileName.isNotEmpty) {
      query = query.ilike('user_profile_name', '%$userProfileName%');
    }
    if (gender != null) {
      query = query.eq('gender', gender);
    }
    if (email != null) {
      query = query.eq('email', email);
    }
    if (mobileNumber != null) {
      query = query.eq('mobile_number', mobileNumber);
    }
    if (fcmToken != null) {
      query = query.eq('fcm_token', fcmToken);
    }
    if (password != null) {
      query = query.eq('password', password);
    }
    if (role != null) {
      query = query.eq('role', role);
    }
    if (isActive != null) {
      query = query.eq('is_active', isActive);
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

  Future<List<UserProfile>> getAll({
    int? id,
    String? idOperatorAndValue,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    var query = client.from('user_profile').select(
      """
*
""",
    );

    if (idOperatorAndValue != null) {
      query = query.eqo('id', idOperatorAndValue);
    }
    if (imageUrl != null) {
      query = query.eq('image_url', imageUrl);
    }
    if (userProfileName != null && userProfileName.isNotEmpty) {
      query = query.ilike('user_profile_name', '%$userProfileName%');
    }
    if (gender != null) {
      query = query.eq('gender', gender);
    }
    if (email != null) {
      query = query.eq('email', email);
    }
    if (mobileNumber != null) {
      query = query.eq('mobile_number', mobileNumber);
    }
    if (fcmToken != null) {
      query = query.eq('fcm_token', fcmToken);
    }
    if (password != null) {
      query = query.eq('password', password);
    }
    if (role != null) {
      query = query.eq('role', role);
    }
    if (isActive != null) {
      query = query.eq('is_active', isActive);
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

    List<UserProfile> result = [];
    for (var item in response!) {
      result.add(UserProfile.fromJson(item));
    }
    return result;
  }

  Stream snapshot({
    int? id,
    String? idOperatorAndValue,
    String? imageUrl,
    String? userProfileName,
    String? gender,
    String? email,
    String? mobileNumber,
    String? fcmToken,
    String? password,
    String? role,
    bool? isActive,
    DateTime? createdAtFrom,
    DateTime? createdAtTo,
    DateTime? updatedAtFrom,
    DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    var query = client.from('user_profile').select(
      """
*
""",
    );

    if (idOperatorAndValue != null) {
      query = query.eqo('id', idOperatorAndValue);
    }
    if (imageUrl != null) {
      query = query.eq('image_url', imageUrl);
    }
    if (userProfileName != null && userProfileName.isNotEmpty) {
      query = query.ilike('user_profile_name', '%$userProfileName%');
    }
    if (gender != null) {
      query = query.eq('gender', gender);
    }
    if (email != null) {
      query = query.eq('email', email);
    }
    if (mobileNumber != null) {
      query = query.eq('mobile_number', mobileNumber);
    }
    if (fcmToken != null) {
      query = query.eq('fcm_token', fcmToken);
    }
    if (password != null) {
      query = query.eq('password', password);
    }
    if (role != null) {
      query = query.eq('role', role);
    }
    if (isActive != null) {
      query = query.eq('is_active', isActive);
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

  Future<UserProfile?> get(int id) async {
    final response = await client
        .from('user_profile')
        .select(
          """
  *
  """,
        )
        .eq('id', id)
        .exec();
    if (response == null) return null;
    if (response.isEmpty) return null;
    return UserProfile.fromJson(response.first);
  }

  Future<UserProfile?> create({
    int? id,
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
      var value = {
        'image_url': imageUrl,
        'user_profile_name': userProfileName,
        'gender': gender,
        'email': email,
        'mobile_number': mobileNumber,
        'fcm_token': fcmToken,
        'password': password,
        'role': role,
        'is_active': isActive,
        'created_at': createdAt?.yMdkkmmss,
      };
      value.removeWhere((key, value) => value == null);

      var values =
          await client.from('user_profile').insert([value]).select().exec();

      if (values == null) return null;
      if (values.isEmpty) return null;

      return UserProfile.fromJson(values.first);
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
      //@BEFORE_UPDATE
      var current = await get(id);
      if (current == null) return null;

      var value = {
        'image_url': imageUrl ?? current.imageUrl,
        'user_profile_name': userProfileName ?? current.userProfileName,
        'gender': gender ?? current.gender,
        'email': email ?? current.email,
        'mobile_number': mobileNumber ?? current.mobileNumber,
        'fcm_token': fcmToken ?? current.fcmToken,
        'password': password ?? current.password,
        'role': role ?? current.role,
        'is_active': isActive ?? current.isActive,
        'updated_at': (updatedAt ?? DateTime.now()).yMdkkmmss,
      };
      value.removeWhere((key, value) => value == null);

      await client.from('user_profile').update(value).eq('id', id).exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> delete(int id) async {
    try {
      await client.from('user_profile').delete().eq('id', id).exec();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> deleteAll() async {
    try {
      await client.from('user_profile').delete().neq('id', -1).exec();
      ;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
