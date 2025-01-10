// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class NotificationMessageEntity {
  //@declaration
  String? title;
  String? body;
  //:@declaration

  NotificationMessageEntity({
    //@constructor
    this.title,
    this.body,
    //:@constructor
  });

  factory NotificationMessageEntity.fromJson(Map<String, dynamic> json) {
    return NotificationMessageEntity(title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'body': body};
  }

  //@copyWith
  NotificationMessageEntity copyWith({String? title, String? body}) {
    return NotificationMessageEntity(
        title: title ?? this.title, body: body ?? this.body);
  }
}
