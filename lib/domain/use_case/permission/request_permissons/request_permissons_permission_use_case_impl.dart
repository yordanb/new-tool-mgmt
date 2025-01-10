// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class RequestPermissonsPermissionUseCaseImpl
    implements RequestPermissonsPermissionUseCase {
  final PermissionRepository repository;

  RequestPermissonsPermissionUseCaseImpl({
    required this.repository,
  });

  Future<void> call() async {
    return await repository.requestPermissons();
  }
}
