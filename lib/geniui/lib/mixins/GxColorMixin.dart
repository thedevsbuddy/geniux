/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxColorMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxColorMixin` Class
///
/// [file] This gives a boilerplate for the `GxColorMixin` class
const String file = "geniui/lib/mixins/GxColorMixin.dart";

/// Get the stub content for the `GxColorMixin` Class
///
/// [stub] This gives a boilerplate for the `GxColorMixin` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxColorMixin<T> {
  late T _child;
  
  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  
  Brightness _brightness = Theme.of(GxService.appKey.currentContext!).brightness;

  
  Color? gxColor;

  
  void setChildForColoring(T child) {
    _child = child;
  }
  
  /// Flutter Theme Colors
  /// ---------------------
  /// Primary Colors
  T primaryColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.primaryColor(context);
    return _child;
  }
  T onDarkPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.primaryColor(context);
    }
    return _child;
  }
  
  /// Primary Light Colors
  T primaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.primaryLightColor(context);
    return _child;
  }
  T onDarkPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.primaryLightColor(context);
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T primaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.primaryDarkColor(context);
    }
    return _child;
  }
  
  /// Secondary Colors
  T secondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.secondaryColor(context);
    return _child;
  }
  T onDarkSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.secondaryColor(context);
    }
    return _child;
  }
  
  /// Background Colors
  T backgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.backgroundColor(context);
    return _child;
  }
  T onDarkBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.backgroundColor(context);
    }
    return _child;
  }
  
  /// Scaffold Background Colors
  T scaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T onDarkScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  
  /// Card Colors
  T cardColor(BuildContext context) {
    if (!_needsDarkVariant) gxColor = GxColors.cardColor(context);
    return _child;
  }
  T onDarkCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxColor = GxColors.cardColor(context);
    }
    return _child;
  }
  
  %colorGetters%
}
""";
