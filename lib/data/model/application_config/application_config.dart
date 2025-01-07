import 'package:hyper_supabase/core.dart';
part 'application_config.freezed.dart';
part 'application_config.g.dart';

@unfreezed
class ApplicationConfig with _$ApplicationConfig {
  factory ApplicationConfig({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'app_mode') String? appMode 
, @Default(null) @JsonKey(name: 'company_name') String? companyName 
, @Default(null) @JsonKey(name: 'address') String? address 
, @Default(null) @JsonKey(name: 'phone_number') String? phoneNumber 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    }) = _ApplicationConfig;

  factory ApplicationConfig.fromJson(Map<String, dynamic> json) => _$ApplicationConfigFromJson(json);
}

//@ MODEL_ONLY
extension ApplicationConfigExtension on ApplicationConfig {
  ApplicationConfigEntity toEntity() {
    return ApplicationConfigEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension ApplicationConfigListExtension on List<ApplicationConfig> {
  List<ApplicationConfigEntity> toEntityList() {
    return this
        .map((model) =>
            ApplicationConfigEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
