// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetApplicationConfigUseCase {
  Future<ApplicationConfigEntity?> call({
    required int id
  });
}
