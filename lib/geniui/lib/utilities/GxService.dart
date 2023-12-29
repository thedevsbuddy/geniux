/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxService` class
const String target = "geniui/lib/utilities/";

/// Get the full file path for the `GxService` Class
///
/// [file] This gives a boilerplate for the `GxService` class
const String file = "geniui/lib/utilities/GxService.dart";

/// Get the stub content for the `GxService` Class
///
/// [stub] This gives a boilerplate for the `GxService` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:geniui/geniui.dart';

class GxService {
  static GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();

  static Future<ThemeMode> getThemeMode() async => await GxAppBuilder.of(appKey.currentContext!)?.getThemeMode() ?? ThemeMode.system;
  static void setThemeMode(ThemeMode mode) => GxAppBuilder.of(appKey.currentContext!)!.setThemeMode(mode);

  static Future<void> init() async => await GetStorage.init();

  static BuildContext get context => appKey.currentContext!;
}
""";
