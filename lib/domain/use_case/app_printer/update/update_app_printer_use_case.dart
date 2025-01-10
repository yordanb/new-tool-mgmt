// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class UpdateAppPrinterUseCase {
  Future<void> call({
    required int id,
String? message,
DateTime? updatedAt,
  });
}
