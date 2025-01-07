import 'package:hyper_supabase/core.dart';
part 'notification_message.freezed.dart';
part 'notification_message.g.dart';

@unfreezed
class NotificationMessage with _$NotificationMessage {
  factory NotificationMessage({
    @Default(null) @JsonKey(name: 'title') String? title,
    @Default(null) @JsonKey(name: 'body') String? body,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageFromJson(json);
}
//
