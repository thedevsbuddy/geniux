import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxColorMixin<T> {
  late T _child;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied

  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied

  Brightness _brightness =
      Theme.of(GxService.appKey.currentContext!).brightness;

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

  T get black {
    if (!_needsDarkVariant) gxColor = GxColors.black;
    return _child;
  }

  T get white {
    if (!_needsDarkVariant) gxColor = GxColors.white;
    return _child;
  }

  T get transparent {
    if (!_needsDarkVariant) gxColor = GxColors.transparent;
    return _child;
  }

  T get slate {
    if (!_needsDarkVariant) gxColor = GxColors.slate;
    return _child;
  }

  T get slate50 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade50;
    return _child;
  }

  T get slate100 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade100;
    return _child;
  }

  T get slate200 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade200;
    return _child;
  }

  T get slate300 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade300;
    return _child;
  }

  T get slate400 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade400;
    return _child;
  }

  T get slate500 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade500;
    return _child;
  }

  T get slate600 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade600;
    return _child;
  }

  T get slate700 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade700;
    return _child;
  }

  T get slate800 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade800;
    return _child;
  }

  T get slate900 {
    if (!_needsDarkVariant) gxColor = GxColors.slate.shade900;
    return _child;
  }

  T get gray {
    if (!_needsDarkVariant) gxColor = GxColors.gray;
    return _child;
  }

  T get gray50 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade50;
    return _child;
  }

  T get gray100 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade100;
    return _child;
  }

  T get gray200 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade200;
    return _child;
  }

  T get gray300 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade300;
    return _child;
  }

  T get gray400 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade400;
    return _child;
  }

  T get gray500 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade500;
    return _child;
  }

  T get gray600 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade600;
    return _child;
  }

  T get gray700 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade700;
    return _child;
  }

  T get gray800 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade800;
    return _child;
  }

  T get gray900 {
    if (!_needsDarkVariant) gxColor = GxColors.gray.shade900;
    return _child;
  }

  T get zinc {
    if (!_needsDarkVariant) gxColor = GxColors.zinc;
    return _child;
  }

  T get zinc50 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade50;
    return _child;
  }

  T get zinc100 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade100;
    return _child;
  }

  T get zinc200 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade200;
    return _child;
  }

  T get zinc300 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade300;
    return _child;
  }

  T get zinc400 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade400;
    return _child;
  }

  T get zinc500 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade500;
    return _child;
  }

  T get zinc600 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade600;
    return _child;
  }

  T get zinc700 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade700;
    return _child;
  }

  T get zinc800 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade800;
    return _child;
  }

  T get zinc900 {
    if (!_needsDarkVariant) gxColor = GxColors.zinc.shade900;
    return _child;
  }

  T get neutral {
    if (!_needsDarkVariant) gxColor = GxColors.neutral;
    return _child;
  }

  T get neutral50 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade50;
    return _child;
  }

  T get neutral100 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade100;
    return _child;
  }

  T get neutral200 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade200;
    return _child;
  }

  T get neutral300 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade300;
    return _child;
  }

  T get neutral400 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade400;
    return _child;
  }

  T get neutral500 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade500;
    return _child;
  }

  T get neutral600 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade600;
    return _child;
  }

  T get neutral700 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade700;
    return _child;
  }

  T get neutral800 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade800;
    return _child;
  }

  T get neutral900 {
    if (!_needsDarkVariant) gxColor = GxColors.neutral.shade900;
    return _child;
  }

  T get stone {
    if (!_needsDarkVariant) gxColor = GxColors.stone;
    return _child;
  }

  T get stone50 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade50;
    return _child;
  }

  T get stone100 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade100;
    return _child;
  }

  T get stone200 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade200;
    return _child;
  }

  T get stone300 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade300;
    return _child;
  }

  T get stone400 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade400;
    return _child;
  }

  T get stone500 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade500;
    return _child;
  }

  T get stone600 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade600;
    return _child;
  }

  T get stone700 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade700;
    return _child;
  }

  T get stone800 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade800;
    return _child;
  }

  T get stone900 {
    if (!_needsDarkVariant) gxColor = GxColors.stone.shade900;
    return _child;
  }

  T get red {
    if (!_needsDarkVariant) gxColor = GxColors.red;
    return _child;
  }

  T get red50 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade50;
    return _child;
  }

  T get red100 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade100;
    return _child;
  }

  T get red200 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade200;
    return _child;
  }

  T get red300 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade300;
    return _child;
  }

  T get red400 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade400;
    return _child;
  }

  T get red500 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade500;
    return _child;
  }

  T get red600 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade600;
    return _child;
  }

  T get red700 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade700;
    return _child;
  }

  T get red800 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade800;
    return _child;
  }

  T get red900 {
    if (!_needsDarkVariant) gxColor = GxColors.red.shade900;
    return _child;
  }

  T get orange {
    if (!_needsDarkVariant) gxColor = GxColors.orange;
    return _child;
  }

  T get orange50 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade50;
    return _child;
  }

  T get orange100 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade100;
    return _child;
  }

  T get orange200 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade200;
    return _child;
  }

  T get orange300 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade300;
    return _child;
  }

  T get orange400 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade400;
    return _child;
  }

  T get orange500 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade500;
    return _child;
  }

  T get orange600 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade600;
    return _child;
  }

  T get orange700 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade700;
    return _child;
  }

  T get orange800 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade800;
    return _child;
  }

  T get orange900 {
    if (!_needsDarkVariant) gxColor = GxColors.orange.shade900;
    return _child;
  }

  T get amber {
    if (!_needsDarkVariant) gxColor = GxColors.amber;
    return _child;
  }

  T get amber50 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade50;
    return _child;
  }

  T get amber100 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade100;
    return _child;
  }

  T get amber200 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade200;
    return _child;
  }

  T get amber300 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade300;
    return _child;
  }

  T get amber400 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade400;
    return _child;
  }

  T get amber500 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade500;
    return _child;
  }

  T get amber600 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade600;
    return _child;
  }

  T get amber700 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade700;
    return _child;
  }

  T get amber800 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade800;
    return _child;
  }

  T get amber900 {
    if (!_needsDarkVariant) gxColor = GxColors.amber.shade900;
    return _child;
  }

  T get yellow {
    if (!_needsDarkVariant) gxColor = GxColors.yellow;
    return _child;
  }

  T get yellow50 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade50;
    return _child;
  }

  T get yellow100 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade100;
    return _child;
  }

  T get yellow200 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade200;
    return _child;
  }

  T get yellow300 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade300;
    return _child;
  }

  T get yellow400 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade400;
    return _child;
  }

  T get yellow500 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade500;
    return _child;
  }

  T get yellow600 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade600;
    return _child;
  }

  T get yellow700 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade700;
    return _child;
  }

  T get yellow800 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade800;
    return _child;
  }

  T get yellow900 {
    if (!_needsDarkVariant) gxColor = GxColors.yellow.shade900;
    return _child;
  }

  T get lime {
    if (!_needsDarkVariant) gxColor = GxColors.lime;
    return _child;
  }

  T get lime50 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade50;
    return _child;
  }

  T get lime100 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade100;
    return _child;
  }

  T get lime200 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade200;
    return _child;
  }

  T get lime300 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade300;
    return _child;
  }

  T get lime400 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade400;
    return _child;
  }

  T get lime500 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade500;
    return _child;
  }

  T get lime600 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade600;
    return _child;
  }

  T get lime700 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade700;
    return _child;
  }

  T get lime800 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade800;
    return _child;
  }

  T get lime900 {
    if (!_needsDarkVariant) gxColor = GxColors.lime.shade900;
    return _child;
  }

  T get green {
    if (!_needsDarkVariant) gxColor = GxColors.green;
    return _child;
  }

  T get green50 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade50;
    return _child;
  }

  T get green100 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade100;
    return _child;
  }

  T get green200 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade200;
    return _child;
  }

  T get green300 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade300;
    return _child;
  }

  T get green400 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade400;
    return _child;
  }

  T get green500 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade500;
    return _child;
  }

  T get green600 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade600;
    return _child;
  }

  T get green700 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade700;
    return _child;
  }

  T get green800 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade800;
    return _child;
  }

  T get green900 {
    if (!_needsDarkVariant) gxColor = GxColors.green.shade900;
    return _child;
  }

  T get emerald {
    if (!_needsDarkVariant) gxColor = GxColors.emerald;
    return _child;
  }

  T get emerald50 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade50;
    return _child;
  }

  T get emerald100 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade100;
    return _child;
  }

  T get emerald200 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade200;
    return _child;
  }

  T get emerald300 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade300;
    return _child;
  }

  T get emerald400 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade400;
    return _child;
  }

  T get emerald500 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade500;
    return _child;
  }

  T get emerald600 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade600;
    return _child;
  }

  T get emerald700 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade700;
    return _child;
  }

  T get emerald800 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade800;
    return _child;
  }

  T get emerald900 {
    if (!_needsDarkVariant) gxColor = GxColors.emerald.shade900;
    return _child;
  }

  T get teal {
    if (!_needsDarkVariant) gxColor = GxColors.teal;
    return _child;
  }

  T get teal50 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade50;
    return _child;
  }

  T get teal100 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade100;
    return _child;
  }

  T get teal200 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade200;
    return _child;
  }

  T get teal300 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade300;
    return _child;
  }

  T get teal400 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade400;
    return _child;
  }

  T get teal500 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade500;
    return _child;
  }

  T get teal600 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade600;
    return _child;
  }

  T get teal700 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade700;
    return _child;
  }

  T get teal800 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade800;
    return _child;
  }

  T get teal900 {
    if (!_needsDarkVariant) gxColor = GxColors.teal.shade900;
    return _child;
  }

  T get cyan {
    if (!_needsDarkVariant) gxColor = GxColors.cyan;
    return _child;
  }

  T get cyan50 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade50;
    return _child;
  }

  T get cyan100 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade100;
    return _child;
  }

  T get cyan200 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade200;
    return _child;
  }

  T get cyan300 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade300;
    return _child;
  }

  T get cyan400 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade400;
    return _child;
  }

  T get cyan500 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade500;
    return _child;
  }

  T get cyan600 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade600;
    return _child;
  }

  T get cyan700 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade700;
    return _child;
  }

  T get cyan800 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade800;
    return _child;
  }

  T get cyan900 {
    if (!_needsDarkVariant) gxColor = GxColors.cyan.shade900;
    return _child;
  }

  T get sky {
    if (!_needsDarkVariant) gxColor = GxColors.sky;
    return _child;
  }

  T get sky50 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade50;
    return _child;
  }

  T get sky100 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade100;
    return _child;
  }

  T get sky200 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade200;
    return _child;
  }

  T get sky300 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade300;
    return _child;
  }

  T get sky400 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade400;
    return _child;
  }

  T get sky500 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade500;
    return _child;
  }

  T get sky600 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade600;
    return _child;
  }

  T get sky700 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade700;
    return _child;
  }

  T get sky800 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade800;
    return _child;
  }

  T get sky900 {
    if (!_needsDarkVariant) gxColor = GxColors.sky.shade900;
    return _child;
  }

  T get blue {
    if (!_needsDarkVariant) gxColor = GxColors.blue;
    return _child;
  }

  T get blue50 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade50;
    return _child;
  }

  T get blue100 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade100;
    return _child;
  }

  T get blue200 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade200;
    return _child;
  }

  T get blue300 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade300;
    return _child;
  }

  T get blue400 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade400;
    return _child;
  }

  T get blue500 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade500;
    return _child;
  }

  T get blue600 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade600;
    return _child;
  }

  T get blue700 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade700;
    return _child;
  }

  T get blue800 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade800;
    return _child;
  }

  T get blue900 {
    if (!_needsDarkVariant) gxColor = GxColors.blue.shade900;
    return _child;
  }

  T get indigo {
    if (!_needsDarkVariant) gxColor = GxColors.indigo;
    return _child;
  }

  T get indigo50 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade50;
    return _child;
  }

  T get indigo100 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade100;
    return _child;
  }

  T get indigo200 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade200;
    return _child;
  }

  T get indigo300 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade300;
    return _child;
  }

  T get indigo400 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade400;
    return _child;
  }

  T get indigo500 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade500;
    return _child;
  }

  T get indigo600 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade600;
    return _child;
  }

  T get indigo700 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade700;
    return _child;
  }

  T get indigo800 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade800;
    return _child;
  }

  T get indigo900 {
    if (!_needsDarkVariant) gxColor = GxColors.indigo.shade900;
    return _child;
  }

  T get violet {
    if (!_needsDarkVariant) gxColor = GxColors.violet;
    return _child;
  }

  T get violet50 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade50;
    return _child;
  }

  T get violet100 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade100;
    return _child;
  }

  T get violet200 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade200;
    return _child;
  }

  T get violet300 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade300;
    return _child;
  }

  T get violet400 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade400;
    return _child;
  }

  T get violet500 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade500;
    return _child;
  }

  T get violet600 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade600;
    return _child;
  }

  T get violet700 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade700;
    return _child;
  }

  T get violet800 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade800;
    return _child;
  }

  T get violet900 {
    if (!_needsDarkVariant) gxColor = GxColors.violet.shade900;
    return _child;
  }

  T get purple {
    if (!_needsDarkVariant) gxColor = GxColors.purple;
    return _child;
  }

  T get purple50 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade50;
    return _child;
  }

  T get purple100 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade100;
    return _child;
  }

  T get purple200 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade200;
    return _child;
  }

  T get purple300 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade300;
    return _child;
  }

  T get purple400 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade400;
    return _child;
  }

  T get purple500 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade500;
    return _child;
  }

  T get purple600 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade600;
    return _child;
  }

  T get purple700 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade700;
    return _child;
  }

  T get purple800 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade800;
    return _child;
  }

  T get purple900 {
    if (!_needsDarkVariant) gxColor = GxColors.purple.shade900;
    return _child;
  }

  T get fuchsia {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia;
    return _child;
  }

  T get fuchsia50 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade50;
    return _child;
  }

  T get fuchsia100 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade100;
    return _child;
  }

  T get fuchsia200 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade200;
    return _child;
  }

  T get fuchsia300 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade300;
    return _child;
  }

  T get fuchsia400 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade400;
    return _child;
  }

  T get fuchsia500 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade500;
    return _child;
  }

  T get fuchsia600 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade600;
    return _child;
  }

  T get fuchsia700 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade700;
    return _child;
  }

  T get fuchsia800 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade800;
    return _child;
  }

  T get fuchsia900 {
    if (!_needsDarkVariant) gxColor = GxColors.fuchsia.shade900;
    return _child;
  }

  T get pink {
    if (!_needsDarkVariant) gxColor = GxColors.pink;
    return _child;
  }

  T get pink50 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade50;
    return _child;
  }

  T get pink100 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade100;
    return _child;
  }

  T get pink200 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade200;
    return _child;
  }

  T get pink300 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade300;
    return _child;
  }

  T get pink400 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade400;
    return _child;
  }

  T get pink500 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade500;
    return _child;
  }

  T get pink600 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade600;
    return _child;
  }

  T get pink700 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade700;
    return _child;
  }

  T get pink800 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade800;
    return _child;
  }

  T get pink900 {
    if (!_needsDarkVariant) gxColor = GxColors.pink.shade900;
    return _child;
  }

  T get rose {
    if (!_needsDarkVariant) gxColor = GxColors.rose;
    return _child;
  }

  T get rose50 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade50;
    return _child;
  }

  T get rose100 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade100;
    return _child;
  }

  T get rose200 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade200;
    return _child;
  }

  T get rose300 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade300;
    return _child;
  }

  T get rose400 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade400;
    return _child;
  }

  T get rose500 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade500;
    return _child;
  }

  T get rose600 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade600;
    return _child;
  }

  T get rose700 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade700;
    return _child;
  }

  T get rose800 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade800;
    return _child;
  }

  T get rose900 {
    if (!_needsDarkVariant) gxColor = GxColors.rose.shade900;
    return _child;
  }
}
