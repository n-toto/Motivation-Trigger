import 'package:clock_app/constants/theme_data.dart';
import 'package:clock_app/enums.dart';
import 'models/alarm_info.dart';
import 'models/menu_info.dart';
import 'package:flutter/material.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
      title: '時計', imageSource: 'assets/c.png'),
  MenuInfo(MenuType.alarm,
      title: 'アラーム', imageSource: 'assets/a.png'),
  ///MenuInfo(MenuType.timer,
      ///title: 'Timer', imageSource: 'assets/timer_icon.png'),
  ///MenuInfo(MenuType.stopwatch,
      ///title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 1)),
      title: 'Office',
      gradientColorIndex: 0),
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 2)),
      title: 'Sport',
      gradientColorIndex: 1),
];
