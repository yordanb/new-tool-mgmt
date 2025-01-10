import 'package:hyper_supabase/core.dart';

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository repository;
  final UserProfileRepository userProfileRepository;
  final AppSessionRepository appSessionRepository;

  LoginUseCaseImpl({
    required this.repository,
    required this.userProfileRepository,
    required this.appSessionRepository,
  });

  Future<AuthEntity?> call({
    String? email,
    String? password,
  }) async {
    try {
      final response = await repository.login(
        email: email,
        password: password,
      );

      final userProfiles = await userProfileRepository.getAll(email: email);
      UserProfileEntity? userProfile;

      print("UserProfile for this email: $userProfiles");

      if (userProfiles.isEmpty) {
        userProfile = await userProfileRepository.create(
          userProfileName: "-",
          email: email,
          gender: "Male",
          imageUrl:
              "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
          isActive: true,
          role: "User",
        );
      } else {
        userProfile = userProfiles.first;
      }

      response!.userProfile = userProfile;

      // session.setCurrentUser(AuthEntity(
      //   userProfileId: userProfile!.id,
      //   email: email,
      //   name: userProfile.userProfileName,
      //   imageUrl: userProfile.imageUrl,
      // ));

      await appSessionRepository.deleteAll();
      await appSessionRepository.create(
        userProfileId: userProfile!.id,
        email: email,
        role: userProfile.role,
        createdAt: DateTime.now(),
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
