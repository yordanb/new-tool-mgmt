import 'package:hyper_supabase/core.dart';

extension AppSessionEntityExtension on AppSessionEntity {
  bool get isAdmin => role == 'Admin';
  bool get isUser => role == 'User';
}
