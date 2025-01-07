import 'package:hyper_supabase/core.dart';
part 'notification_message_entity.freezed.dart';
part 'notification_message_entity.g.dart';

@unfreezed
class NotificationMessageEntity with _$NotificationMessageEntity {
  factory NotificationMessageEntity({
    @Default(null) @JsonKey(name: 'title') String? title,
    @Default(null) @JsonKey(name: 'body') String? body,
  }) = _NotificationMessageEntity;

  factory NotificationMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageEntityFromJson(json);
}
