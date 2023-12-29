/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxColors` class
const String target = "geniui/lib/utilities/";

/// Get the full file path for the `GxColors` Class
///
/// [file] This gives a boilerplate for the `GxColors` class
const String file = "geniui/lib/utilities/GxColors.dart";

/// Get the stub content for the `GxColors` Class
///
/// [stub] This gives a boilerplate for the `GxColors` class
const String stub = """
import "package:flutter/material.dart";

/// [GxColors] Utility helper for [GeniUI] Colors
class GxColors {
  GxColors._();

  /// Theme Colors
  static Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;
  static Color primaryLightColor(BuildContext context) => Theme.of(context).primaryColorLight;
  static Color primaryDarkColor(BuildContext context) => Theme.of(context).primaryColorDark;
  static Color secondaryColor(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color backgroundColor(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color scaffoldBackgroundColor(BuildContext context) => Theme.of(context).scaffoldBackgroundColor;
  static Color cardColor(BuildContext context) => Theme.of(context).cardColor;

  /// GeniUI Colors
  //colors
}

""";
