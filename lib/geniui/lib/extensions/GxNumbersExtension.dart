/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxNumbersExtension` class
const String target = "geniui/lib/extensions/";

/// Get the full file path for the `GxNumbersExtension` Class
///
/// [file] This gives a boilerplate for the `GxNumbersExtension` class
const String file = "geniui/lib/extensions/GxNumbersExtension.dart";

/// Get the stub content for the `GxNumbersExtension` Class
///
/// [stub] This gives a boilerplate for the `GxNumbersExtension` class
const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for double
extension GxDoubleExtension on double {
  // SizedBox Widget
  Widget get spaceX => SizedBox(width: this);
  Widget get spaceY => SizedBox(height: this);

  // Duration
   Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}

/// Extension Methods for int
extension GxIntExtension on int {
  // SizedBox Widget
  Widget get spaceX => SizedBox(width: toDouble());
  Widget get spaceY => SizedBox(height: toDouble());

  // Duration
  Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}
""";
