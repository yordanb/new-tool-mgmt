import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hyper_supabase/core/util/log/log.dart';
import 'package:hyper_supabase/data/service/notification_service/notification_service.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  printg('[Notification] Background messages received:  ${message.messageId}');
  await NotificationServiceImpl().showFlutterNotification(message);
}

class NotificationServiceImpl implements NotificationService {
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  Future<void> setupLocalNotifications() async {
    if (flutterLocalNotificationsPlugin != null) return;
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin!.initialize(initializationSettings);
  }

  Future<void> showFlutterNotification(RemoteMessage message) async {
    await setupLocalNotifications();
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null) {
      await flutterLocalNotificationsPlugin!.show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'high_importance_channel',
            'High Importance Notifications',
            channelDescription:
                'This channel is used for important notifications.',
            importance: Importance.high,
            priority: Priority.high,
            icon: 'launch_background',
          ),
        ),
      );
    }
  }
}
