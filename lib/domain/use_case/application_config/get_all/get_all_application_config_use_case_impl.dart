// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class GetAllApplicationConfigUseCaseImpl implements GetAllApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  GetAllApplicationConfigUseCaseImpl({
    required this.repository,
  });
  
  Future<List<ApplicationConfigEntity>> call({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) async {
    return await repository.getAll(
      id: id,
idOperatorAndValue: idOperatorAndValue, appMode: appMode, companyName: companyName, address: address, phoneNumber: phoneNumber, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
