// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetToolUseCase {
  Future<ToolEntity?> call({required int id});
}
