class AppUser {
  final String id;
  final int userProfileId;
  final String? email;
  final String? role;

  AppUser({
    required this.id,
    required this.userProfileId,
    required this.email,
    required this.role,
  });
}
