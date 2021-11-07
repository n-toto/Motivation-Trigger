import 'package:clock_app/enums.dart';
import 'package:clock_app/models/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'views/homepage.dart';
import 'views/question_top.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var initializationSettingsAndroid =
      AndroidInitializationSettings('codex_logo');
  var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification:
          (int id, String title, String body, String payload) async {});
  var initializationSettings = InitializationSettings(
      initializationSettingsAndroid, initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
  });
  final NotificationAppLaunchDetails notificationAppLaunchDetails =
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  final didNotificationLaunchApp =
      notificationAppLaunchDetails?.didNotificationLaunchApp ?? false;
  String initialRoute = didNotificationLaunchApp ? '/questions' : '/homepage';
  runApp(
    MaterialApp(
      title: 'Motivation Trigger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: initialRoute,
      routes: <String, WidgetBuilder>{
        '/homepage': (context) => ChangeNotifierProvider<MenuInfo>(
              create: (context) => MenuInfo(MenuType.clock),
              child: HomePage(),
            ),
        '/questions': (context) => Start(),
      },
      // home: ChangeNotifierProvider<MenuInfo>(
      //   create: (context) => MenuInfo(MenuType.clock),
      //   child: HomePage(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/homepage',
      routes: <String, WidgetBuilder>{
        '/homepage': (context) => ChangeNotifierProvider<MenuInfo>(
              create: (context) => MenuInfo(MenuType.clock),
              child: HomePage(),
            ),
        '/questions': (context) => Start(),
      },
      // home: ChangeNotifierProvider<MenuInfo>(
      //   create: (context) => MenuInfo(MenuType.clock),
      //   child: HomePage(),
    );
  }
}
