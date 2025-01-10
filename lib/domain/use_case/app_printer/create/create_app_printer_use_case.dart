// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class CreateAppPrinterUseCase {
  Future<AppPrinterEntity?> call({
    String? message,
DateTime? createdAt,
  });
}
