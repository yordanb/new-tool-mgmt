// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAppPrinterUseCaseImpl implements GetAppPrinterUseCase {
  final AppPrinterRepository repository;

  GetAppPrinterUseCaseImpl({
    required this.repository,
  });

  Future<AppPrinterEntity?> call({required int id}) async {
    try {
      return await repository.get(id);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
