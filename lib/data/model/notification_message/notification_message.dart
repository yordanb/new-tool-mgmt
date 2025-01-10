// ignore: unused_import
import 'package:hyper_supabase/core.dart';

class NotificationMessage {
  //@declaration
  String? title;
  String? body;
  //:@declaration

  NotificationMessage({
    //@constructor
    this.title,
    this.body,
    //:@constructor
  });

  factory NotificationMessage.fromJson(Map<String, dynamic> json) {
    return NotificationMessage(
      title: json['title'],
      body: json['body']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body
    };
  }

  //@copyWith
  NotificationMessage copyWith({
     String? title,
     String? body
  }) {
    return NotificationMessage(
      title: title ?? this.title,
      body: body ?? this.body
    );
  }
}