import 'package:hyper_supabase/core.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences prefs;

  AuthLocalDataSourceImpl({
    required this.prefs,
  });

  @override
  Future<void> setSession({
    required AuthModel authModel,
  }) async {
    await prefs.setString("auth", jsonEncode(authModel.toJson()));
  }

  @override
  Future<AuthModel> getSession() async {
    final json = prefs.getString("auth");
    if (json != null) {
      return AuthModel.fromJson(jsonDecode(json));
    }
    return Future.value(AuthModel());
  }

  @override
  Future<void> clearSession() async {
    await prefs.remove("auth");
  }
}
