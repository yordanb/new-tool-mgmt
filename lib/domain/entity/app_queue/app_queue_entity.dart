import 'package:hyper_supabase/core.dart';
part 'app_queue_entity.freezed.dart';
part 'app_queue_entity.g.dart';

@unfreezed
class AppQueueEntity with _$AppQueueEntity {
  factory AppQueueEntity({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'action') String? action 
, @Default(null) @JsonKey(name: 'action_data') String? actionData 
, @Default(null) @JsonKey(name: 'app_mode') String? appMode 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfileEntity? userProfile,}) = _AppQueueEntity;

  factory AppQueueEntity.fromJson(Map<String, dynamic> json) => _$AppQueueEntityFromJson(json);
}


