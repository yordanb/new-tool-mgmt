// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateAppPrinterUseCaseImpl implements CreateAppPrinterUseCase {
  final AppPrinterRepository repository;

  CreateAppPrinterUseCaseImpl({
    required this.repository,
  });
  
  Future<AppPrinterEntity?> call({
    String? message,
DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        message: message,createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
