// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class SnapshotApplicationConfigUseCaseImpl implements SnapshotApplicationConfigUseCase {
  final ApplicationConfigRepository repository;

  SnapshotApplicationConfigUseCaseImpl({
    required this.repository,
  });
  
  Stream call({
    int? id,
String? idOperatorAndValue, String? appMode, String? companyName, String? address, String? phoneNumber, DateTime? createdAtFrom,
DateTime? createdAtTo, DateTime? updatedAtFrom,
DateTime? updatedAtTo,
    int limit = 10,
    int page = 1,
  }) {
    return repository.snapshot(
      id: id,
idOperatorAndValue: idOperatorAndValue, appMode: appMode, companyName: companyName, address: address, phoneNumber: phoneNumber, createdAtFrom: createdAtFrom,
createdAtTo: createdAtTo, updatedAtFrom: updatedAtFrom,
updatedAtTo: updatedAtTo,
      limit: limit,
      page: page,
    );
  }
}
