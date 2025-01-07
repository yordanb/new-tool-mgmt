import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class NotificationService {
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  Future<void> setupLocalNotifications();
  Future<void> showFlutterNotification(RemoteMessage message);
}
