import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:geniui/geniui.dart';

class GxService {
  static GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static Future<ThemeMode> getThemeMode() async =>
      await GxAppBuilder.of(appKey.currentContext!)?.getThemeMode() ??
      ThemeMode.system;
  static void setThemeMode(ThemeMode mode) =>
      GxAppBuilder.of(appKey.currentContext!)!.setThemeMode(mode);

  static Future<void> init() async => await GetStorage.init();

  static BuildContext get context => appKey.currentContext!;
}
