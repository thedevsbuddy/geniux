/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxContextExtension` class
const String target = "geniui/lib/extensions/";

/// Get the full file path for the `GxContextExtension` Class
///
/// [file] This gives a boilerplate for the `GxContextExtension` class
const String file = "geniui/lib/extensions/GxContextExtension.dart";

/// Get the stub content for the `GxContextExtension` Class
///
/// [stub] This gives a boilerplate for the `GxContextExtension` class
const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for context
extension GxContextExtension on BuildContext {
  // Get screen size
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
""";
