// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAppPrinterUseCaseImpl implements DeleteAppPrinterUseCase {
  final AppPrinterRepository repository;

  DeleteAppPrinterUseCaseImpl({
    required this.repository,
  });

  Future<void> call(int id) async {
    try {
      await repository.delete(
        id,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
