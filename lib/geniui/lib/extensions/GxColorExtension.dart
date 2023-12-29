/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxColorExtension` class
const String target = "geniui/lib/extensions/";

/// Get the full file path for the `GxColorExtension` Class
///
/// [file] This gives a boilerplate for the `GxColorExtension` class
const String file = "geniui/lib/extensions/GxColorExtension.dart";

/// Get the stub content for the `GxColorExtension` Class
///
/// [stub] This gives a boilerplate for the `GxColorExtension` class
const String stub = """
import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension GxColorExtension on Color {
  Color o(double value) => this.withOpacity(value);
  Color withOpacity(double value) => this.withOpacity(value);
  //opacity
}
""";
