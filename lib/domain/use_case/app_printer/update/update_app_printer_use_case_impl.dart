// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateAppPrinterUseCaseImpl implements UpdateAppPrinterUseCase {
  final AppPrinterRepository repository;

  UpdateAppPrinterUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    required int id,
String? message,
DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,message: message,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
