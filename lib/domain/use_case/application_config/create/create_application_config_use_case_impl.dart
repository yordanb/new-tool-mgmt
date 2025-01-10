// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CreateApplicationConfigUseCaseImpl
    implements CreateApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  CreateApplicationConfigUseCaseImpl({
    required this.repository,
  });

  Future<ApplicationConfigEntity?> call({
    String? appMode,
    String? companyName,
    String? address,
    String? phoneNumber,
    DateTime? createdAt,
  }) async {
    try {
      final response = await repository.create(
        appMode: appMode,
        companyName: companyName,
        address: address,
        phoneNumber: phoneNumber,
        createdAt: createdAt,
      );
      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
