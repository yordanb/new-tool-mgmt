import 'package:hyper_supabase/core.dart';

class PermissionRepositoryImpl implements PermissionRepository {
  final PermissionService permissionService;

  PermissionRepositoryImpl({
    required this.permissionService,
  });

  @override
  Future<void> requestPermissons() async {
    await permissionService.requestPermissons();
  }
}
