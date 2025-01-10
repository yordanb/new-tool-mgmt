// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class DeleteAllAppPrinterUseCaseImpl implements DeleteAllAppPrinterUseCase {
  final AppPrinterRepository repository;

  DeleteAllAppPrinterUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call() async {
    try {
      await repository.deleteAll();
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
