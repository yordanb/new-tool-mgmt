// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetAppQueueUseCase {
  Future<AppQueueEntity?> call({
    required int id
  });
}
