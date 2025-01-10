import 'package:hyper_supabase/core.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient client;

  AuthRemoteDataSourceImpl({
    required this.client,
  });

  Future<bool> isLoggedIn() async {
    try {
      var user = client.auth.currentUser;
      return user != null;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }

  @override
  Future<AuthModel?> login({
    required String email,
    required String password,
  }) async {
    try {
      var authResponse = await client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (authResponse.user != null) {
        return AuthModel(
          id: authResponse.user!.id,
          userProfileId: -1,
          accessToken: authResponse.session?.accessToken,
        );
      }
    } on Exception catch (err) {
      print("Error: $err");
      throw Exception(err);
    }
    return null;
  }

  @override
  Future<AuthModel?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      printo("Sign up...");
      var authResponse = await client.auth.signUp(
        email: email,
        password: password,
      );
      printo("Sign up done...");
      printg("authResponse: $authResponse");
      if (authResponse.user != null) {
        return AuthModel(
          id: authResponse.user!.id,
          userProfileId: -1,
        );
      }
    } on Exception catch (err) {
      throw Exception(err);
    }
    return null;
  }

  @override
  Future<bool> resetPassword({
    required String email,
  }) async {
    try {
      await client.auth.resetPasswordForEmail(
        email,
      );
      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await client.auth.signOut();
      return true;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }
}
