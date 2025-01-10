// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateApplicationConfigUseCase {
  Future<void> call({
    required int id,
String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? updatedAt,
  });
}
