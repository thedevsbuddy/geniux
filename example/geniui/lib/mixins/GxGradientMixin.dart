import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxGradientMixin<T> {
  late T _child;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied

  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied

  Brightness _brightness =
      Theme.of(GxService.appKey.currentContext!).brightness;

  bool hasGradient = false;
  Alignment begin = Alignment.topLeft, end = Alignment.bottomRight;
  List<Color> gradientColors = [Colors.transparent, Colors.transparent];
  List<double>? stops;

  void setChildForGradient(T child) {
    _child = child;
  }

  T get gradientToRight {
    hasGradient = true;
    begin = Alignment.centerLeft;
    end = Alignment.centerRight;
    return _child;
  }

  T get gradientToLeft {
    hasGradient = true;
    begin = Alignment.centerRight;
    end = Alignment.centerLeft;
    return _child;
  }

  T get gradientToBottom {
    hasGradient = true;
    begin = Alignment.topCenter;
    end = Alignment.bottomCenter;
    return _child;
  }

  T get gradientToTop {
    hasGradient = true;
    begin = Alignment.bottomCenter;
    end = Alignment.topCenter;
    return _child;
  }

  T get gradientToBr {
    hasGradient = true;
    begin = Alignment.topLeft;
    end = Alignment.bottomRight;
    return _child;
  }

  T get gradientToBl {
    hasGradient = true;
    begin = Alignment.topRight;
    end = Alignment.bottomLeft;
    return _child;
  }

  T get gradientToTr {
    hasGradient = true;
    begin = Alignment.bottomLeft;
    end = Alignment.topRight;
    return _child;
  }

  T get gradientToTl {
    hasGradient = true;
    begin = Alignment.bottomRight;
    end = Alignment.topLeft;
    return _child;
  }

  ///---------------------
  /// Gradient Colors
  ///---------------------

  /// Flutter Theme Colors
  ///----------------------

  /// Primary Colors
  T fromPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.primaryColor(context);
    return _child;
  }

  T onDarkFromPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.primaryColor(context);
    }
    return _child;
  }

  T toPrimaryColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.primaryColor(context);
    return _child;
  }

  T onDarkToPrimaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.primaryColor(context);
    }
    return _child;
  }

  /// Primary Light Colors
  T fromPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[0] = GxColors.primaryLightColor(context);
    return _child;
  }

  T onDarkFromPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.primaryLightColor(context);
    }
    return _child;
  }

  T toPrimaryLightColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[1] = GxColors.primaryLightColor(context);
    return _child;
  }

  T onDarkToPrimaryLightColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.primaryLightColor(context);
    }
    return _child;
  }

  /// Primary Dark Colors
  T fromPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[0] = GxColors.primaryDarkColor(context);
    return _child;
  }

  T onDarkFromPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.primaryDarkColor(context);
    }
    return _child;
  }

  T toPrimaryDarkColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[1] = GxColors.primaryDarkColor(context);
    return _child;
  }

  T onDarkToPrimaryDarkColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.primaryDarkColor(context);
    }
    return _child;
  }

  /// Secondary Colors
  T fromSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[0] = GxColors.secondaryColor(context);
    return _child;
  }

  T onDarkFromSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.secondaryColor(context);
    }
    return _child;
  }

  T toSecondaryColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[1] = GxColors.secondaryColor(context);
    return _child;
  }

  T onDarkToSecondaryColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.secondaryColor(context);
    }
    return _child;
  }

  /// Background Colors
  T fromBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[0] = GxColors.backgroundColor(context);
    return _child;
  }

  T onDarkFromBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.backgroundColor(context);
    }
    return _child;
  }

  T toBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[1] = GxColors.backgroundColor(context);
    return _child;
  }

  T onDarkToBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.backgroundColor(context);
    }
    return _child;
  }

  /// Scaffold Background Colors
  T fromScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[0] = GxColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T onDarkFromScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }

  T toScaffoldBackgroundColor(BuildContext context) {
    if (!_needsDarkVariant)
      gradientColors[1] = GxColors.scaffoldBackgroundColor(context);
    return _child;
  }

  T onDarkToScaffoldBackgroundColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.scaffoldBackgroundColor(context);
    }
    return _child;
  }

  /// Card Colors
  T fromCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cardColor(context);
    return _child;
  }

  T onDarkFromCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[0] = GxColors.cardColor(context);
    }
    return _child;
  }

  T toCardColor(BuildContext context) {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cardColor(context);
    return _child;
  }

  T onDarkToCardColor(BuildContext context) {
    if (_brightness == Brightness.dark) {
      _needsDarkVariant = true;
      gradientColors[1] = GxColors.cardColor(context);
    }
    return _child;
  }

  T get fromBlack {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.black;
    return _child;
  }

  T get toBlack {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.black;
    return _child;
  }

  T get fromWhite {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.white;
    return _child;
  }

  T get toWhite {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.white;
    return _child;
  }

  T get fromTransparent {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.transparent;
    return _child;
  }

  T get toTransparent {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.transparent;
    return _child;
  }

  T get fromSlate {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate;
    return _child;
  }

  T get toSlate {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate;
    return _child;
  }

  T get fromSlate50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade50;
    return _child;
  }

  T get toSlate50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade50;
    return _child;
  }

  T get fromSlate100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade100;
    return _child;
  }

  T get toSlate100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade100;
    return _child;
  }

  T get fromSlate200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade200;
    return _child;
  }

  T get toSlate200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade200;
    return _child;
  }

  T get fromSlate300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade300;
    return _child;
  }

  T get toSlate300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade300;
    return _child;
  }

  T get fromSlate400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade400;
    return _child;
  }

  T get toSlate400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade400;
    return _child;
  }

  T get fromSlate500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade500;
    return _child;
  }

  T get toSlate500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade500;
    return _child;
  }

  T get fromSlate600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade600;
    return _child;
  }

  T get toSlate600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade600;
    return _child;
  }

  T get fromSlate700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade700;
    return _child;
  }

  T get toSlate700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade700;
    return _child;
  }

  T get fromSlate800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade800;
    return _child;
  }

  T get toSlate800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade800;
    return _child;
  }

  T get fromSlate900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.slate.shade900;
    return _child;
  }

  T get toSlate900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.slate.shade900;
    return _child;
  }

  T get fromGray {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray;
    return _child;
  }

  T get toGray {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray;
    return _child;
  }

  T get fromGray50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade50;
    return _child;
  }

  T get toGray50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade50;
    return _child;
  }

  T get fromGray100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade100;
    return _child;
  }

  T get toGray100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade100;
    return _child;
  }

  T get fromGray200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade200;
    return _child;
  }

  T get toGray200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade200;
    return _child;
  }

  T get fromGray300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade300;
    return _child;
  }

  T get toGray300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade300;
    return _child;
  }

  T get fromGray400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade400;
    return _child;
  }

  T get toGray400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade400;
    return _child;
  }

  T get fromGray500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade500;
    return _child;
  }

  T get toGray500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade500;
    return _child;
  }

  T get fromGray600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade600;
    return _child;
  }

  T get toGray600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade600;
    return _child;
  }

  T get fromGray700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade700;
    return _child;
  }

  T get toGray700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade700;
    return _child;
  }

  T get fromGray800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade800;
    return _child;
  }

  T get toGray800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade800;
    return _child;
  }

  T get fromGray900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.gray.shade900;
    return _child;
  }

  T get toGray900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.gray.shade900;
    return _child;
  }

  T get fromZinc {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc;
    return _child;
  }

  T get toZinc {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc;
    return _child;
  }

  T get fromZinc50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade50;
    return _child;
  }

  T get toZinc50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade50;
    return _child;
  }

  T get fromZinc100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade100;
    return _child;
  }

  T get toZinc100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade100;
    return _child;
  }

  T get fromZinc200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade200;
    return _child;
  }

  T get toZinc200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade200;
    return _child;
  }

  T get fromZinc300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade300;
    return _child;
  }

  T get toZinc300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade300;
    return _child;
  }

  T get fromZinc400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade400;
    return _child;
  }

  T get toZinc400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade400;
    return _child;
  }

  T get fromZinc500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade500;
    return _child;
  }

  T get toZinc500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade500;
    return _child;
  }

  T get fromZinc600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade600;
    return _child;
  }

  T get toZinc600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade600;
    return _child;
  }

  T get fromZinc700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade700;
    return _child;
  }

  T get toZinc700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade700;
    return _child;
  }

  T get fromZinc800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade800;
    return _child;
  }

  T get toZinc800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade800;
    return _child;
  }

  T get fromZinc900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.zinc.shade900;
    return _child;
  }

  T get toZinc900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.zinc.shade900;
    return _child;
  }

  T get fromNeutral {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral;
    return _child;
  }

  T get toNeutral {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral;
    return _child;
  }

  T get fromNeutral50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade50;
    return _child;
  }

  T get toNeutral50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade50;
    return _child;
  }

  T get fromNeutral100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade100;
    return _child;
  }

  T get toNeutral100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade100;
    return _child;
  }

  T get fromNeutral200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade200;
    return _child;
  }

  T get toNeutral200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade200;
    return _child;
  }

  T get fromNeutral300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade300;
    return _child;
  }

  T get toNeutral300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade300;
    return _child;
  }

  T get fromNeutral400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade400;
    return _child;
  }

  T get toNeutral400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade400;
    return _child;
  }

  T get fromNeutral500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade500;
    return _child;
  }

  T get toNeutral500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade500;
    return _child;
  }

  T get fromNeutral600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade600;
    return _child;
  }

  T get toNeutral600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade600;
    return _child;
  }

  T get fromNeutral700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade700;
    return _child;
  }

  T get toNeutral700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade700;
    return _child;
  }

  T get fromNeutral800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade800;
    return _child;
  }

  T get toNeutral800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade800;
    return _child;
  }

  T get fromNeutral900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.neutral.shade900;
    return _child;
  }

  T get toNeutral900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.neutral.shade900;
    return _child;
  }

  T get fromStone {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone;
    return _child;
  }

  T get toStone {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone;
    return _child;
  }

  T get fromStone50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade50;
    return _child;
  }

  T get toStone50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade50;
    return _child;
  }

  T get fromStone100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade100;
    return _child;
  }

  T get toStone100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade100;
    return _child;
  }

  T get fromStone200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade200;
    return _child;
  }

  T get toStone200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade200;
    return _child;
  }

  T get fromStone300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade300;
    return _child;
  }

  T get toStone300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade300;
    return _child;
  }

  T get fromStone400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade400;
    return _child;
  }

  T get toStone400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade400;
    return _child;
  }

  T get fromStone500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade500;
    return _child;
  }

  T get toStone500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade500;
    return _child;
  }

  T get fromStone600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade600;
    return _child;
  }

  T get toStone600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade600;
    return _child;
  }

  T get fromStone700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade700;
    return _child;
  }

  T get toStone700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade700;
    return _child;
  }

  T get fromStone800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade800;
    return _child;
  }

  T get toStone800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade800;
    return _child;
  }

  T get fromStone900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.stone.shade900;
    return _child;
  }

  T get toStone900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.stone.shade900;
    return _child;
  }

  T get fromRed {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red;
    return _child;
  }

  T get toRed {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red;
    return _child;
  }

  T get fromRed50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade50;
    return _child;
  }

  T get toRed50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade50;
    return _child;
  }

  T get fromRed100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade100;
    return _child;
  }

  T get toRed100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade100;
    return _child;
  }

  T get fromRed200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade200;
    return _child;
  }

  T get toRed200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade200;
    return _child;
  }

  T get fromRed300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade300;
    return _child;
  }

  T get toRed300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade300;
    return _child;
  }

  T get fromRed400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade400;
    return _child;
  }

  T get toRed400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade400;
    return _child;
  }

  T get fromRed500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade500;
    return _child;
  }

  T get toRed500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade500;
    return _child;
  }

  T get fromRed600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade600;
    return _child;
  }

  T get toRed600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade600;
    return _child;
  }

  T get fromRed700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade700;
    return _child;
  }

  T get toRed700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade700;
    return _child;
  }

  T get fromRed800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade800;
    return _child;
  }

  T get toRed800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade800;
    return _child;
  }

  T get fromRed900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.red.shade900;
    return _child;
  }

  T get toRed900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.red.shade900;
    return _child;
  }

  T get fromOrange {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange;
    return _child;
  }

  T get toOrange {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange;
    return _child;
  }

  T get fromOrange50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade50;
    return _child;
  }

  T get toOrange50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade50;
    return _child;
  }

  T get fromOrange100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade100;
    return _child;
  }

  T get toOrange100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade100;
    return _child;
  }

  T get fromOrange200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade200;
    return _child;
  }

  T get toOrange200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade200;
    return _child;
  }

  T get fromOrange300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade300;
    return _child;
  }

  T get toOrange300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade300;
    return _child;
  }

  T get fromOrange400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade400;
    return _child;
  }

  T get toOrange400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade400;
    return _child;
  }

  T get fromOrange500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade500;
    return _child;
  }

  T get toOrange500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade500;
    return _child;
  }

  T get fromOrange600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade600;
    return _child;
  }

  T get toOrange600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade600;
    return _child;
  }

  T get fromOrange700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade700;
    return _child;
  }

  T get toOrange700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade700;
    return _child;
  }

  T get fromOrange800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade800;
    return _child;
  }

  T get toOrange800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade800;
    return _child;
  }

  T get fromOrange900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.orange.shade900;
    return _child;
  }

  T get toOrange900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.orange.shade900;
    return _child;
  }

  T get fromAmber {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber;
    return _child;
  }

  T get toAmber {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber;
    return _child;
  }

  T get fromAmber50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade50;
    return _child;
  }

  T get toAmber50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade50;
    return _child;
  }

  T get fromAmber100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade100;
    return _child;
  }

  T get toAmber100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade100;
    return _child;
  }

  T get fromAmber200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade200;
    return _child;
  }

  T get toAmber200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade200;
    return _child;
  }

  T get fromAmber300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade300;
    return _child;
  }

  T get toAmber300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade300;
    return _child;
  }

  T get fromAmber400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade400;
    return _child;
  }

  T get toAmber400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade400;
    return _child;
  }

  T get fromAmber500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade500;
    return _child;
  }

  T get toAmber500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade500;
    return _child;
  }

  T get fromAmber600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade600;
    return _child;
  }

  T get toAmber600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade600;
    return _child;
  }

  T get fromAmber700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade700;
    return _child;
  }

  T get toAmber700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade700;
    return _child;
  }

  T get fromAmber800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade800;
    return _child;
  }

  T get toAmber800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade800;
    return _child;
  }

  T get fromAmber900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.amber.shade900;
    return _child;
  }

  T get toAmber900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.amber.shade900;
    return _child;
  }

  T get fromYellow {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow;
    return _child;
  }

  T get toYellow {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow;
    return _child;
  }

  T get fromYellow50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade50;
    return _child;
  }

  T get toYellow50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade50;
    return _child;
  }

  T get fromYellow100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade100;
    return _child;
  }

  T get toYellow100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade100;
    return _child;
  }

  T get fromYellow200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade200;
    return _child;
  }

  T get toYellow200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade200;
    return _child;
  }

  T get fromYellow300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade300;
    return _child;
  }

  T get toYellow300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade300;
    return _child;
  }

  T get fromYellow400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade400;
    return _child;
  }

  T get toYellow400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade400;
    return _child;
  }

  T get fromYellow500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade500;
    return _child;
  }

  T get toYellow500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade500;
    return _child;
  }

  T get fromYellow600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade600;
    return _child;
  }

  T get toYellow600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade600;
    return _child;
  }

  T get fromYellow700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade700;
    return _child;
  }

  T get toYellow700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade700;
    return _child;
  }

  T get fromYellow800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade800;
    return _child;
  }

  T get toYellow800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade800;
    return _child;
  }

  T get fromYellow900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.yellow.shade900;
    return _child;
  }

  T get toYellow900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.yellow.shade900;
    return _child;
  }

  T get fromLime {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime;
    return _child;
  }

  T get toLime {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime;
    return _child;
  }

  T get fromLime50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade50;
    return _child;
  }

  T get toLime50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade50;
    return _child;
  }

  T get fromLime100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade100;
    return _child;
  }

  T get toLime100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade100;
    return _child;
  }

  T get fromLime200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade200;
    return _child;
  }

  T get toLime200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade200;
    return _child;
  }

  T get fromLime300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade300;
    return _child;
  }

  T get toLime300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade300;
    return _child;
  }

  T get fromLime400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade400;
    return _child;
  }

  T get toLime400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade400;
    return _child;
  }

  T get fromLime500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade500;
    return _child;
  }

  T get toLime500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade500;
    return _child;
  }

  T get fromLime600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade600;
    return _child;
  }

  T get toLime600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade600;
    return _child;
  }

  T get fromLime700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade700;
    return _child;
  }

  T get toLime700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade700;
    return _child;
  }

  T get fromLime800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade800;
    return _child;
  }

  T get toLime800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade800;
    return _child;
  }

  T get fromLime900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.lime.shade900;
    return _child;
  }

  T get toLime900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.lime.shade900;
    return _child;
  }

  T get fromGreen {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green;
    return _child;
  }

  T get toGreen {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green;
    return _child;
  }

  T get fromGreen50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade50;
    return _child;
  }

  T get toGreen50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade50;
    return _child;
  }

  T get fromGreen100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade100;
    return _child;
  }

  T get toGreen100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade100;
    return _child;
  }

  T get fromGreen200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade200;
    return _child;
  }

  T get toGreen200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade200;
    return _child;
  }

  T get fromGreen300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade300;
    return _child;
  }

  T get toGreen300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade300;
    return _child;
  }

  T get fromGreen400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade400;
    return _child;
  }

  T get toGreen400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade400;
    return _child;
  }

  T get fromGreen500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade500;
    return _child;
  }

  T get toGreen500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade500;
    return _child;
  }

  T get fromGreen600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade600;
    return _child;
  }

  T get toGreen600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade600;
    return _child;
  }

  T get fromGreen700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade700;
    return _child;
  }

  T get toGreen700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade700;
    return _child;
  }

  T get fromGreen800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade800;
    return _child;
  }

  T get toGreen800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade800;
    return _child;
  }

  T get fromGreen900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.green.shade900;
    return _child;
  }

  T get toGreen900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.green.shade900;
    return _child;
  }

  T get fromEmerald {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald;
    return _child;
  }

  T get toEmerald {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald;
    return _child;
  }

  T get fromEmerald50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade50;
    return _child;
  }

  T get toEmerald50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade50;
    return _child;
  }

  T get fromEmerald100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade100;
    return _child;
  }

  T get toEmerald100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade100;
    return _child;
  }

  T get fromEmerald200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade200;
    return _child;
  }

  T get toEmerald200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade200;
    return _child;
  }

  T get fromEmerald300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade300;
    return _child;
  }

  T get toEmerald300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade300;
    return _child;
  }

  T get fromEmerald400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade400;
    return _child;
  }

  T get toEmerald400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade400;
    return _child;
  }

  T get fromEmerald500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade500;
    return _child;
  }

  T get toEmerald500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade500;
    return _child;
  }

  T get fromEmerald600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade600;
    return _child;
  }

  T get toEmerald600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade600;
    return _child;
  }

  T get fromEmerald700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade700;
    return _child;
  }

  T get toEmerald700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade700;
    return _child;
  }

  T get fromEmerald800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade800;
    return _child;
  }

  T get toEmerald800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade800;
    return _child;
  }

  T get fromEmerald900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.emerald.shade900;
    return _child;
  }

  T get toEmerald900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.emerald.shade900;
    return _child;
  }

  T get fromTeal {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal;
    return _child;
  }

  T get toTeal {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal;
    return _child;
  }

  T get fromTeal50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade50;
    return _child;
  }

  T get toTeal50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade50;
    return _child;
  }

  T get fromTeal100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade100;
    return _child;
  }

  T get toTeal100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade100;
    return _child;
  }

  T get fromTeal200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade200;
    return _child;
  }

  T get toTeal200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade200;
    return _child;
  }

  T get fromTeal300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade300;
    return _child;
  }

  T get toTeal300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade300;
    return _child;
  }

  T get fromTeal400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade400;
    return _child;
  }

  T get toTeal400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade400;
    return _child;
  }

  T get fromTeal500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade500;
    return _child;
  }

  T get toTeal500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade500;
    return _child;
  }

  T get fromTeal600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade600;
    return _child;
  }

  T get toTeal600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade600;
    return _child;
  }

  T get fromTeal700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade700;
    return _child;
  }

  T get toTeal700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade700;
    return _child;
  }

  T get fromTeal800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade800;
    return _child;
  }

  T get toTeal800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade800;
    return _child;
  }

  T get fromTeal900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.teal.shade900;
    return _child;
  }

  T get toTeal900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.teal.shade900;
    return _child;
  }

  T get fromCyan {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan;
    return _child;
  }

  T get toCyan {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan;
    return _child;
  }

  T get fromCyan50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade50;
    return _child;
  }

  T get toCyan50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade50;
    return _child;
  }

  T get fromCyan100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade100;
    return _child;
  }

  T get toCyan100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade100;
    return _child;
  }

  T get fromCyan200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade200;
    return _child;
  }

  T get toCyan200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade200;
    return _child;
  }

  T get fromCyan300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade300;
    return _child;
  }

  T get toCyan300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade300;
    return _child;
  }

  T get fromCyan400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade400;
    return _child;
  }

  T get toCyan400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade400;
    return _child;
  }

  T get fromCyan500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade500;
    return _child;
  }

  T get toCyan500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade500;
    return _child;
  }

  T get fromCyan600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade600;
    return _child;
  }

  T get toCyan600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade600;
    return _child;
  }

  T get fromCyan700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade700;
    return _child;
  }

  T get toCyan700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade700;
    return _child;
  }

  T get fromCyan800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade800;
    return _child;
  }

  T get toCyan800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade800;
    return _child;
  }

  T get fromCyan900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.cyan.shade900;
    return _child;
  }

  T get toCyan900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.cyan.shade900;
    return _child;
  }

  T get fromSky {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky;
    return _child;
  }

  T get toSky {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky;
    return _child;
  }

  T get fromSky50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade50;
    return _child;
  }

  T get toSky50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade50;
    return _child;
  }

  T get fromSky100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade100;
    return _child;
  }

  T get toSky100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade100;
    return _child;
  }

  T get fromSky200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade200;
    return _child;
  }

  T get toSky200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade200;
    return _child;
  }

  T get fromSky300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade300;
    return _child;
  }

  T get toSky300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade300;
    return _child;
  }

  T get fromSky400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade400;
    return _child;
  }

  T get toSky400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade400;
    return _child;
  }

  T get fromSky500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade500;
    return _child;
  }

  T get toSky500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade500;
    return _child;
  }

  T get fromSky600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade600;
    return _child;
  }

  T get toSky600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade600;
    return _child;
  }

  T get fromSky700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade700;
    return _child;
  }

  T get toSky700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade700;
    return _child;
  }

  T get fromSky800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade800;
    return _child;
  }

  T get toSky800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade800;
    return _child;
  }

  T get fromSky900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.sky.shade900;
    return _child;
  }

  T get toSky900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.sky.shade900;
    return _child;
  }

  T get fromBlue {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue;
    return _child;
  }

  T get toBlue {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue;
    return _child;
  }

  T get fromBlue50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade50;
    return _child;
  }

  T get toBlue50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade50;
    return _child;
  }

  T get fromBlue100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade100;
    return _child;
  }

  T get toBlue100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade100;
    return _child;
  }

  T get fromBlue200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade200;
    return _child;
  }

  T get toBlue200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade200;
    return _child;
  }

  T get fromBlue300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade300;
    return _child;
  }

  T get toBlue300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade300;
    return _child;
  }

  T get fromBlue400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade400;
    return _child;
  }

  T get toBlue400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade400;
    return _child;
  }

  T get fromBlue500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade500;
    return _child;
  }

  T get toBlue500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade500;
    return _child;
  }

  T get fromBlue600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade600;
    return _child;
  }

  T get toBlue600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade600;
    return _child;
  }

  T get fromBlue700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade700;
    return _child;
  }

  T get toBlue700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade700;
    return _child;
  }

  T get fromBlue800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade800;
    return _child;
  }

  T get toBlue800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade800;
    return _child;
  }

  T get fromBlue900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.blue.shade900;
    return _child;
  }

  T get toBlue900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.blue.shade900;
    return _child;
  }

  T get fromIndigo {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo;
    return _child;
  }

  T get toIndigo {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo;
    return _child;
  }

  T get fromIndigo50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade50;
    return _child;
  }

  T get toIndigo50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade50;
    return _child;
  }

  T get fromIndigo100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade100;
    return _child;
  }

  T get toIndigo100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade100;
    return _child;
  }

  T get fromIndigo200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade200;
    return _child;
  }

  T get toIndigo200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade200;
    return _child;
  }

  T get fromIndigo300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade300;
    return _child;
  }

  T get toIndigo300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade300;
    return _child;
  }

  T get fromIndigo400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade400;
    return _child;
  }

  T get toIndigo400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade400;
    return _child;
  }

  T get fromIndigo500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade500;
    return _child;
  }

  T get toIndigo500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade500;
    return _child;
  }

  T get fromIndigo600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade600;
    return _child;
  }

  T get toIndigo600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade600;
    return _child;
  }

  T get fromIndigo700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade700;
    return _child;
  }

  T get toIndigo700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade700;
    return _child;
  }

  T get fromIndigo800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade800;
    return _child;
  }

  T get toIndigo800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade800;
    return _child;
  }

  T get fromIndigo900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.indigo.shade900;
    return _child;
  }

  T get toIndigo900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.indigo.shade900;
    return _child;
  }

  T get fromViolet {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet;
    return _child;
  }

  T get toViolet {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet;
    return _child;
  }

  T get fromViolet50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade50;
    return _child;
  }

  T get toViolet50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade50;
    return _child;
  }

  T get fromViolet100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade100;
    return _child;
  }

  T get toViolet100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade100;
    return _child;
  }

  T get fromViolet200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade200;
    return _child;
  }

  T get toViolet200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade200;
    return _child;
  }

  T get fromViolet300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade300;
    return _child;
  }

  T get toViolet300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade300;
    return _child;
  }

  T get fromViolet400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade400;
    return _child;
  }

  T get toViolet400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade400;
    return _child;
  }

  T get fromViolet500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade500;
    return _child;
  }

  T get toViolet500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade500;
    return _child;
  }

  T get fromViolet600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade600;
    return _child;
  }

  T get toViolet600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade600;
    return _child;
  }

  T get fromViolet700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade700;
    return _child;
  }

  T get toViolet700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade700;
    return _child;
  }

  T get fromViolet800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade800;
    return _child;
  }

  T get toViolet800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade800;
    return _child;
  }

  T get fromViolet900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.violet.shade900;
    return _child;
  }

  T get toViolet900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.violet.shade900;
    return _child;
  }

  T get fromPurple {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple;
    return _child;
  }

  T get toPurple {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple;
    return _child;
  }

  T get fromPurple50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade50;
    return _child;
  }

  T get toPurple50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade50;
    return _child;
  }

  T get fromPurple100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade100;
    return _child;
  }

  T get toPurple100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade100;
    return _child;
  }

  T get fromPurple200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade200;
    return _child;
  }

  T get toPurple200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade200;
    return _child;
  }

  T get fromPurple300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade300;
    return _child;
  }

  T get toPurple300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade300;
    return _child;
  }

  T get fromPurple400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade400;
    return _child;
  }

  T get toPurple400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade400;
    return _child;
  }

  T get fromPurple500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade500;
    return _child;
  }

  T get toPurple500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade500;
    return _child;
  }

  T get fromPurple600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade600;
    return _child;
  }

  T get toPurple600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade600;
    return _child;
  }

  T get fromPurple700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade700;
    return _child;
  }

  T get toPurple700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade700;
    return _child;
  }

  T get fromPurple800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade800;
    return _child;
  }

  T get toPurple800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade800;
    return _child;
  }

  T get fromPurple900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.purple.shade900;
    return _child;
  }

  T get toPurple900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.purple.shade900;
    return _child;
  }

  T get fromFuchsia {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia;
    return _child;
  }

  T get toFuchsia {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia;
    return _child;
  }

  T get fromFuchsia50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade50;
    return _child;
  }

  T get toFuchsia50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade50;
    return _child;
  }

  T get fromFuchsia100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade100;
    return _child;
  }

  T get toFuchsia100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade100;
    return _child;
  }

  T get fromFuchsia200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade200;
    return _child;
  }

  T get toFuchsia200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade200;
    return _child;
  }

  T get fromFuchsia300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade300;
    return _child;
  }

  T get toFuchsia300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade300;
    return _child;
  }

  T get fromFuchsia400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade400;
    return _child;
  }

  T get toFuchsia400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade400;
    return _child;
  }

  T get fromFuchsia500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade500;
    return _child;
  }

  T get toFuchsia500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade500;
    return _child;
  }

  T get fromFuchsia600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade600;
    return _child;
  }

  T get toFuchsia600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade600;
    return _child;
  }

  T get fromFuchsia700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade700;
    return _child;
  }

  T get toFuchsia700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade700;
    return _child;
  }

  T get fromFuchsia800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade800;
    return _child;
  }

  T get toFuchsia800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade800;
    return _child;
  }

  T get fromFuchsia900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.fuchsia.shade900;
    return _child;
  }

  T get toFuchsia900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.fuchsia.shade900;
    return _child;
  }

  T get fromPink {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink;
    return _child;
  }

  T get toPink {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink;
    return _child;
  }

  T get fromPink50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade50;
    return _child;
  }

  T get toPink50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade50;
    return _child;
  }

  T get fromPink100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade100;
    return _child;
  }

  T get toPink100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade100;
    return _child;
  }

  T get fromPink200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade200;
    return _child;
  }

  T get toPink200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade200;
    return _child;
  }

  T get fromPink300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade300;
    return _child;
  }

  T get toPink300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade300;
    return _child;
  }

  T get fromPink400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade400;
    return _child;
  }

  T get toPink400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade400;
    return _child;
  }

  T get fromPink500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade500;
    return _child;
  }

  T get toPink500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade500;
    return _child;
  }

  T get fromPink600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade600;
    return _child;
  }

  T get toPink600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade600;
    return _child;
  }

  T get fromPink700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade700;
    return _child;
  }

  T get toPink700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade700;
    return _child;
  }

  T get fromPink800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade800;
    return _child;
  }

  T get toPink800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade800;
    return _child;
  }

  T get fromPink900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.pink.shade900;
    return _child;
  }

  T get toPink900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.pink.shade900;
    return _child;
  }

  T get fromRose {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose;
    return _child;
  }

  T get toRose {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose;
    return _child;
  }

  T get fromRose50 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade50;
    return _child;
  }

  T get toRose50 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade50;
    return _child;
  }

  T get fromRose100 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade100;
    return _child;
  }

  T get toRose100 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade100;
    return _child;
  }

  T get fromRose200 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade200;
    return _child;
  }

  T get toRose200 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade200;
    return _child;
  }

  T get fromRose300 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade300;
    return _child;
  }

  T get toRose300 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade300;
    return _child;
  }

  T get fromRose400 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade400;
    return _child;
  }

  T get toRose400 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade400;
    return _child;
  }

  T get fromRose500 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade500;
    return _child;
  }

  T get toRose500 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade500;
    return _child;
  }

  T get fromRose600 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade600;
    return _child;
  }

  T get toRose600 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade600;
    return _child;
  }

  T get fromRose700 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade700;
    return _child;
  }

  T get toRose700 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade700;
    return _child;
  }

  T get fromRose800 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade800;
    return _child;
  }

  T get toRose800 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade800;
    return _child;
  }

  T get fromRose900 {
    if (!_needsDarkVariant) gradientColors[0] = GxColors.rose.shade900;
    return _child;
  }

  T get toRose900 {
    if (!_needsDarkVariant) gradientColors[1] = GxColors.rose.shade900;
    return _child;
  }
}
