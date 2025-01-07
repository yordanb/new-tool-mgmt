import 'package:hyper_supabase/core.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.authLocalDataSource,
    required this.remoteDataSource,
  });

  Future<bool> isLoggedIn() async {
    try {
      var authModel = await authLocalDataSource.getSession();
      if (authModel.accessToken != null) {
        return true;
      }
      return false;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }

  Future<AuthEntity?> login({
    String? email,
    String? password,
  }) async {
    try {
      final model = await remoteDataSource.login(
        email: email!,
        password: password!,
      );

      await authLocalDataSource.setSession(
        authModel: model!,
      );

      var entity = AuthEntity.fromJson(model.toJson());
      return entity;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<AuthEntity?> register({
    String? name,
    String? email,
    String? password,
  }) async {
    try {
      final model = await remoteDataSource.register(
        name: name!,
        email: email!,
        password: password!,
      );

      // await userProfileRemoteDataSource.create(
      //   userProfileName: name,
      //   email: email,
      //   gender: "Male",
      //   imageUrl:
      //       "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
      //   role: "User",
      //   isActive: true,
      // );

      return AuthEntity.fromJson(model!.toJson());
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await remoteDataSource.logout();
      await authLocalDataSource.clearSession();
    } on Exception catch (err) {
      print(err);
    }
  }
}
