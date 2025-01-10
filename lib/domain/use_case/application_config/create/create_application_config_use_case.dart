// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateApplicationConfigUseCase {
  Future<ApplicationConfigEntity?> call({
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAt,
  });
}
