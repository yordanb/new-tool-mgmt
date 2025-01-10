// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class CountApplicationConfigUseCaseImpl implements CountApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  CountApplicationConfigUseCaseImpl({
    required this.repository,
  });
  
  Future<int> call({int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,}) async {
    return await repository.count(
      id: id,
idOperatorAndValue: idOperatorAndValue, appMode: appMode, companyName: companyName, address: address, phoneNumber: phoneNumber, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
    );
  }
}
