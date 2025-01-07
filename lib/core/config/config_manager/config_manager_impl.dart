import 'package:hyper_supabase/core/config/config_manager/config_manager.dart';

class ConfigManagerImpl implements ConfigManager {
  bool isDevMode;
  bool isTestingMode;
  bool isSafeMode;
  bool forceOffline;

  String supabaseURL;
  String supabaseAnonKey;
  String defaultAdminEmail;

  ConfigManagerImpl({
    required this.isDevMode,
    required this.isTestingMode,
    required this.isSafeMode,
    required this.forceOffline,
    required this.supabaseURL,
    required this.supabaseAnonKey,
    required this.defaultAdminEmail,
  });
}
