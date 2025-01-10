// ignore: unused_import
import 'package:hyper_supabase/core.dart';

abstract class GetUserProfileUseCase {
  Future<UserProfileEntity?> call({
    required int id
  });
}
