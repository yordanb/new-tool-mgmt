// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetApplicationConfigUseCaseImpl implements GetApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  GetApplicationConfigUseCaseImpl({
    required this.repository,
  });

  Future<ApplicationConfigEntity?> call({required int id}) async {
    try {
      return await repository.get(id);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
