// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class UpdateApplicationConfigUseCaseImpl implements UpdateApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  UpdateApplicationConfigUseCaseImpl({
    required this.repository,
  });
  
  Future<void> call({
    required int id,
String? appMode,
String? companyName,
String? address,
String? phoneNumber,
DateTime? updatedAt,
  }) async {
    try {
      await repository.update(
        id: id,appMode: appMode,companyName: companyName,address: address,phoneNumber: phoneNumber,updatedAt: updatedAt,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
