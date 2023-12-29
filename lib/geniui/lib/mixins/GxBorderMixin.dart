/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxBorderMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxBorderMixin` Class
///
/// [file] This gives a boilerplate for the `GxBorderMixin` class
const String file = "geniui/lib/mixins/GxBorderMixin.dart";

/// Get the stub content for the `GxBorderMixin` Class
///
/// [stub] This gives a boilerplate for the `GxBorderMixin` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxBorderMixin<T> {
  late T _child;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  Brightness _brightness = Theme.of(GxService.appKey.currentContext!).brightness;

  bool _hasBorder = false;
  Color? gxBorderColor = Colors.grey[500];
  BorderStyle? gxBorderStyle = BorderStyle.solid;
  double gxBorderWidth = 1;

  void setChildForBorder(T child) {
    _child = child;
  }

  @Deprecated('This extension is deprecated now and will no longer be available in future please consider using [hasBorder] instead')
  T get border {
    _hasBorder = true;
    return _child;
  }
  T get hasBorder {
    _hasBorder = true;
    return _child;
  }

  T get borderSolid {
    gxBorderStyle = BorderStyle.solid;
    return _child;
  }

  T get borderNone {
    _hasBorder = false;
    gxBorderStyle = BorderStyle.none;
    return _child;
  }

  /// Border Sizes / Widths
  T borderWidth(dynamic width) {
    gxBorderWidth = width;
    return _child;
  }
  
  T get borderDp {
    gxBorderWidth = 1;
    return _child;
  }

  T get borderDp2 {
    gxBorderWidth = 2;
    return _child;
  }

  T get borderDp3 {
    gxBorderWidth = 3;
    return _child;
  }

  %sizes%

  Border getBorder() {
    if (_hasBorder) {
      return Border.all(color: gxBorderColor!, width: gxBorderWidth);
    } else {
      return Border.all(color: Colors.transparent, width: 0);
    }
  }
  
  T borderColor(Color color) {
    gxBorderColor = color;
    return _child;
  }
  
  /// Flutter Theme Colors
  /// ---------------------
  /// Primary Colors
  T borderPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.primaryColor(context);
    return _child;
  }
  T onDarkBorderPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.primaryColor(context);
    }
    return _child;
  }
  
  /// Primary Light Colors
  T borderPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.primaryLightColor(context);
    return _child;
  }
  T onDarkBorderPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.primaryLightColor(context);
    }
    return _child;
  }
  
  /// Primary Dark Colors
  T borderPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.primaryDarkColor(context);
    return _child;
  }
  T onDarkBorderPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.primaryDarkColor(context);
    }
    return _child;
  }
  
  /// Secondary Colors
  T borderSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.secondaryColor(context);
    return _child;
  }
  T onDarkBorderSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.secondaryColor(context);
    }
    return _child;
  }
  
  /// Background Colors
  T borderBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.backgroundColor(context);
    return _child;
  }
  T onDarkBorderBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.backgroundColor(context);
    }
    return _child;
  }
  
  /// Scaffold Background Colors
  T borderScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.scaffoldBackgroundColor(context);
    return _child;
  }
  T onDarkBorderScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }
  
  /// Card Colors
  T borderCardColor(BuildContext context) {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cardColor(context);
    return _child;
  }
  T onDarkBorderCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gxBorderColor = GxColors.cardColor(context);
    }
    return _child;
  }
  
  %colors%
}

""";
