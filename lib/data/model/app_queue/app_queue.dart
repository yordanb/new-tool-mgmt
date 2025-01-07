import 'package:hyper_supabase/core.dart';
part 'app_queue.freezed.dart';
part 'app_queue.g.dart';

@unfreezed
class AppQueue with _$AppQueue {
  factory AppQueue({
    @Default(null) @JsonKey(name: 'id') int? id 
, @Default(null) @JsonKey(name: 'user_profile_id') int? userProfileId 
, @Default(null) @JsonKey(name: 'action') String? action 
, @Default(null) @JsonKey(name: 'action_data') String? actionData 
, @Default(null) @JsonKey(name: 'app_mode') String? appMode 
, @Default(null) @JsonKey(name: 'created_at') DateTime? createdAt 
, @Default(null) @JsonKey(name: 'updated_at') DateTime? updatedAt 
,
    @JsonKey(name: 'user_profile') UserProfile? userProfile,}) = _AppQueue;

  factory AppQueue.fromJson(Map<String, dynamic> json) => _$AppQueueFromJson(json);
}

//@ MODEL_ONLY
extension AppQueueExtension on AppQueue {
  AppQueueEntity toEntity() {
    return AppQueueEntity.fromJson(jsonDecode(jsonEncode(this)));
  }
}

extension AppQueueListExtension on List<AppQueue> {
  List<AppQueueEntity> toEntityList() {
    return this
        .map((model) =>
            AppQueueEntity.fromJson(model.toJson().cleanJson()))
        .toList();
  }

  String toJsonEncoded() {
    return jsonEncode(this.map((e) => e.toJson().cleanJson()).toList());
  }
}
//:@ MODEL_ONLY
