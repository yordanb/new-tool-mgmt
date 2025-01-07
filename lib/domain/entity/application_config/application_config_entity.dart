import 'package:hyper_supabase/core.dart';
part 'application_config_entity.freezed.dart';
part 'application_config_entity.g.dart';

@unfreezed
class ApplicationConfigEntity with _$ApplicationConfigEntity {
  factory ApplicationConfigEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'app_mode') String? appMode 
, @Default(null) @JsonKey(name: 'company_name') String? companyName 
, @Default(null) @JsonKey(name: 'address') String? address 
, @Default(null) @JsonKey(name: 'phone_number') String? phoneNumber 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _ApplicationConfigEntity;

  factory ApplicationConfigEntity.fromJson(Map<String, dynamic> json) => _$ApplicationConfigEntityFromJson(json);
}


