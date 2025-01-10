// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAppPrinterUseCase {
  Future<AppPrinterEntity?> call({required int id});
}
