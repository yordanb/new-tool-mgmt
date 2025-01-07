//@only_repository
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hyper_supabase/core.dart';

class AppNotificationRepositoryImpl implements AppNotificationRepository {
  final NotificationService notificationService;

  AppNotificationRepositoryImpl({
    required this.notificationService,
  });

  @override
  Future<void> initialize() async {
    if(Platform.isWindows || Platform.isLinux || Platform.isMacOS) return;
    
    var fcmToken = await FirebaseMessaging.instance.getToken();
    printg('[Notification] FCM Token');
    printg('[Notification] $fcmToken');

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      notificationService.showFlutterNotification(message);
    });

    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   notificationService.showFlutterNotification(message);
    // });
  }
}
