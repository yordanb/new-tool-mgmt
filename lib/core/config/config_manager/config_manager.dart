abstract class ConfigManager {
  late bool isDevMode;
  late bool isTestingMode;
  late bool isSafeMode;
  late bool forceOffline;

  late String supabaseURL;
  late String supabaseAnonKey;
  late String defaultAdminEmail;
}
