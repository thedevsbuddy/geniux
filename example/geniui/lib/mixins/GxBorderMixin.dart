import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxBorderMixin<T> {
  late T _child;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  bool _needsDarkVariant = false;

  /// Checks if app is in dark mode
  /// And also Checks if [Widget] has [onDark<Color>] applied
  Brightness _brightness =
      Theme.of(GxService.appKey.currentContext!).brightness;

  bool _hasBorder = false;
  Color? gxBorderColor = Colors.grey[500];
  BorderStyle? gxBorderStyle = BorderStyle.solid;
  double gxBorderWidth = 1;

  void setChildForBorder(T child) {
    _child = child;
  }

  @Deprecated(
      'This extension is deprecated now and will no longer be available in future please consider using [hasBorder] instead')
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

  T get borderBase {
    gxBorderWidth = GxSizes.spacer;
    return _child;
  }

  T get border0 {
    gxBorderWidth = GxSizes.spacer0;
    return _child;
  }

  T get border1 {
    gxBorderWidth = GxSizes.spacer1;
    return _child;
  }

  T get border2 {
    gxBorderWidth = GxSizes.spacer2;
    return _child;
  }

  T get border3 {
    gxBorderWidth = GxSizes.spacer3;
    return _child;
  }

  T get border4 {
    gxBorderWidth = GxSizes.spacer4;
    return _child;
  }

  T get border5 {
    gxBorderWidth = GxSizes.spacer5;
    return _child;
  }

  T get border6 {
    gxBorderWidth = GxSizes.spacer6;
    return _child;
  }

  T get border7 {
    gxBorderWidth = GxSizes.spacer7;
    return _child;
  }

  T get border8 {
    gxBorderWidth = GxSizes.spacer8;
    return _child;
  }

  T get border9 {
    gxBorderWidth = GxSizes.spacer9;
    return _child;
  }

  T get border10 {
    gxBorderWidth = GxSizes.spacer10;
    return _child;
  }

  T get border11 {
    gxBorderWidth = GxSizes.spacer11;
    return _child;
  }

  T get border12 {
    gxBorderWidth = GxSizes.spacer12;
    return _child;
  }

  T get border14 {
    gxBorderWidth = GxSizes.spacer14;
    return _child;
  }

  T get border16 {
    gxBorderWidth = GxSizes.spacer16;
    return _child;
  }

  T get border20 {
    gxBorderWidth = GxSizes.spacer20;
    return _child;
  }

  T get border24 {
    gxBorderWidth = GxSizes.spacer24;
    return _child;
  }

  T get border28 {
    gxBorderWidth = GxSizes.spacer28;
    return _child;
  }

  T get border32 {
    gxBorderWidth = GxSizes.spacer32;
    return _child;
  }

  T get border36 {
    gxBorderWidth = GxSizes.spacer36;
    return _child;
  }

  T get border40 {
    gxBorderWidth = GxSizes.spacer40;
    return _child;
  }

  T get border44 {
    gxBorderWidth = GxSizes.spacer44;
    return _child;
  }

  T get border48 {
    gxBorderWidth = GxSizes.spacer48;
    return _child;
  }

  T get border52 {
    gxBorderWidth = GxSizes.spacer52;
    return _child;
  }

  T get border56 {
    gxBorderWidth = GxSizes.spacer56;
    return _child;
  }

  T get border60 {
    gxBorderWidth = GxSizes.spacer60;
    return _child;
  }

  T get border64 {
    gxBorderWidth = GxSizes.spacer64;
    return _child;
  }

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
    if (!_needsDarkVariant)
      gxBorderColor = GxColors.scaffoldBackgroundColor(context);
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

  T get borderBlack {
    if (!_needsDarkVariant) gxBorderColor = GxColors.black;
    return _child;
  }

  T get borderWhite {
    if (!_needsDarkVariant) gxBorderColor = GxColors.white;
    return _child;
  }

  T get borderTransparent {
    if (!_needsDarkVariant) gxBorderColor = GxColors.transparent;
    return _child;
  }

  T get borderSlate {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate;
    return _child;
  }

  T get borderSlate50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade50;
    return _child;
  }

  T get borderSlate100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade100;
    return _child;
  }

  T get borderSlate200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade200;
    return _child;
  }

  T get borderSlate300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade300;
    return _child;
  }

  T get borderSlate400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade400;
    return _child;
  }

  T get borderSlate500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade500;
    return _child;
  }

  T get borderSlate600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade600;
    return _child;
  }

  T get borderSlate700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade700;
    return _child;
  }

  T get borderSlate800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade800;
    return _child;
  }

  T get borderSlate900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.slate.shade900;
    return _child;
  }

  T get borderGray {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray;
    return _child;
  }

  T get borderGray50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade50;
    return _child;
  }

  T get borderGray100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade100;
    return _child;
  }

  T get borderGray200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade200;
    return _child;
  }

  T get borderGray300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade300;
    return _child;
  }

  T get borderGray400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade400;
    return _child;
  }

  T get borderGray500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade500;
    return _child;
  }

  T get borderGray600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade600;
    return _child;
  }

  T get borderGray700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade700;
    return _child;
  }

  T get borderGray800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade800;
    return _child;
  }

  T get borderGray900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.gray.shade900;
    return _child;
  }

  T get borderZinc {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc;
    return _child;
  }

  T get borderZinc50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade50;
    return _child;
  }

  T get borderZinc100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade100;
    return _child;
  }

  T get borderZinc200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade200;
    return _child;
  }

  T get borderZinc300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade300;
    return _child;
  }

  T get borderZinc400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade400;
    return _child;
  }

  T get borderZinc500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade500;
    return _child;
  }

  T get borderZinc600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade600;
    return _child;
  }

  T get borderZinc700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade700;
    return _child;
  }

  T get borderZinc800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade800;
    return _child;
  }

  T get borderZinc900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.zinc.shade900;
    return _child;
  }

  T get borderNeutral {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral;
    return _child;
  }

  T get borderNeutral50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade50;
    return _child;
  }

  T get borderNeutral100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade100;
    return _child;
  }

  T get borderNeutral200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade200;
    return _child;
  }

  T get borderNeutral300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade300;
    return _child;
  }

  T get borderNeutral400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade400;
    return _child;
  }

  T get borderNeutral500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade500;
    return _child;
  }

  T get borderNeutral600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade600;
    return _child;
  }

  T get borderNeutral700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade700;
    return _child;
  }

  T get borderNeutral800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade800;
    return _child;
  }

  T get borderNeutral900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.neutral.shade900;
    return _child;
  }

  T get borderStone {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone;
    return _child;
  }

  T get borderStone50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade50;
    return _child;
  }

  T get borderStone100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade100;
    return _child;
  }

  T get borderStone200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade200;
    return _child;
  }

  T get borderStone300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade300;
    return _child;
  }

  T get borderStone400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade400;
    return _child;
  }

  T get borderStone500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade500;
    return _child;
  }

  T get borderStone600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade600;
    return _child;
  }

  T get borderStone700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade700;
    return _child;
  }

  T get borderStone800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade800;
    return _child;
  }

  T get borderStone900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.stone.shade900;
    return _child;
  }

  T get borderRed {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red;
    return _child;
  }

  T get borderRed50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade50;
    return _child;
  }

  T get borderRed100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade100;
    return _child;
  }

  T get borderRed200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade200;
    return _child;
  }

  T get borderRed300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade300;
    return _child;
  }

  T get borderRed400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade400;
    return _child;
  }

  T get borderRed500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade500;
    return _child;
  }

  T get borderRed600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade600;
    return _child;
  }

  T get borderRed700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade700;
    return _child;
  }

  T get borderRed800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade800;
    return _child;
  }

  T get borderRed900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.red.shade900;
    return _child;
  }

  T get borderOrange {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange;
    return _child;
  }

  T get borderOrange50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade50;
    return _child;
  }

  T get borderOrange100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade100;
    return _child;
  }

  T get borderOrange200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade200;
    return _child;
  }

  T get borderOrange300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade300;
    return _child;
  }

  T get borderOrange400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade400;
    return _child;
  }

  T get borderOrange500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade500;
    return _child;
  }

  T get borderOrange600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade600;
    return _child;
  }

  T get borderOrange700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade700;
    return _child;
  }

  T get borderOrange800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade800;
    return _child;
  }

  T get borderOrange900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.orange.shade900;
    return _child;
  }

  T get borderAmber {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber;
    return _child;
  }

  T get borderAmber50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade50;
    return _child;
  }

  T get borderAmber100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade100;
    return _child;
  }

  T get borderAmber200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade200;
    return _child;
  }

  T get borderAmber300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade300;
    return _child;
  }

  T get borderAmber400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade400;
    return _child;
  }

  T get borderAmber500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade500;
    return _child;
  }

  T get borderAmber600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade600;
    return _child;
  }

  T get borderAmber700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade700;
    return _child;
  }

  T get borderAmber800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade800;
    return _child;
  }

  T get borderAmber900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.amber.shade900;
    return _child;
  }

  T get borderYellow {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow;
    return _child;
  }

  T get borderYellow50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade50;
    return _child;
  }

  T get borderYellow100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade100;
    return _child;
  }

  T get borderYellow200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade200;
    return _child;
  }

  T get borderYellow300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade300;
    return _child;
  }

  T get borderYellow400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade400;
    return _child;
  }

  T get borderYellow500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade500;
    return _child;
  }

  T get borderYellow600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade600;
    return _child;
  }

  T get borderYellow700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade700;
    return _child;
  }

  T get borderYellow800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade800;
    return _child;
  }

  T get borderYellow900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.yellow.shade900;
    return _child;
  }

  T get borderLime {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime;
    return _child;
  }

  T get borderLime50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade50;
    return _child;
  }

  T get borderLime100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade100;
    return _child;
  }

  T get borderLime200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade200;
    return _child;
  }

  T get borderLime300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade300;
    return _child;
  }

  T get borderLime400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade400;
    return _child;
  }

  T get borderLime500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade500;
    return _child;
  }

  T get borderLime600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade600;
    return _child;
  }

  T get borderLime700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade700;
    return _child;
  }

  T get borderLime800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade800;
    return _child;
  }

  T get borderLime900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.lime.shade900;
    return _child;
  }

  T get borderGreen {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green;
    return _child;
  }

  T get borderGreen50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade50;
    return _child;
  }

  T get borderGreen100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade100;
    return _child;
  }

  T get borderGreen200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade200;
    return _child;
  }

  T get borderGreen300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade300;
    return _child;
  }

  T get borderGreen400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade400;
    return _child;
  }

  T get borderGreen500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade500;
    return _child;
  }

  T get borderGreen600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade600;
    return _child;
  }

  T get borderGreen700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade700;
    return _child;
  }

  T get borderGreen800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade800;
    return _child;
  }

  T get borderGreen900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.green.shade900;
    return _child;
  }

  T get borderEmerald {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald;
    return _child;
  }

  T get borderEmerald50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade50;
    return _child;
  }

  T get borderEmerald100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade100;
    return _child;
  }

  T get borderEmerald200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade200;
    return _child;
  }

  T get borderEmerald300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade300;
    return _child;
  }

  T get borderEmerald400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade400;
    return _child;
  }

  T get borderEmerald500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade500;
    return _child;
  }

  T get borderEmerald600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade600;
    return _child;
  }

  T get borderEmerald700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade700;
    return _child;
  }

  T get borderEmerald800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade800;
    return _child;
  }

  T get borderEmerald900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.emerald.shade900;
    return _child;
  }

  T get borderTeal {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal;
    return _child;
  }

  T get borderTeal50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade50;
    return _child;
  }

  T get borderTeal100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade100;
    return _child;
  }

  T get borderTeal200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade200;
    return _child;
  }

  T get borderTeal300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade300;
    return _child;
  }

  T get borderTeal400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade400;
    return _child;
  }

  T get borderTeal500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade500;
    return _child;
  }

  T get borderTeal600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade600;
    return _child;
  }

  T get borderTeal700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade700;
    return _child;
  }

  T get borderTeal800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade800;
    return _child;
  }

  T get borderTeal900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.teal.shade900;
    return _child;
  }

  T get borderCyan {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan;
    return _child;
  }

  T get borderCyan50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade50;
    return _child;
  }

  T get borderCyan100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade100;
    return _child;
  }

  T get borderCyan200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade200;
    return _child;
  }

  T get borderCyan300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade300;
    return _child;
  }

  T get borderCyan400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade400;
    return _child;
  }

  T get borderCyan500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade500;
    return _child;
  }

  T get borderCyan600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade600;
    return _child;
  }

  T get borderCyan700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade700;
    return _child;
  }

  T get borderCyan800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade800;
    return _child;
  }

  T get borderCyan900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.cyan.shade900;
    return _child;
  }

  T get borderSky {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky;
    return _child;
  }

  T get borderSky50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade50;
    return _child;
  }

  T get borderSky100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade100;
    return _child;
  }

  T get borderSky200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade200;
    return _child;
  }

  T get borderSky300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade300;
    return _child;
  }

  T get borderSky400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade400;
    return _child;
  }

  T get borderSky500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade500;
    return _child;
  }

  T get borderSky600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade600;
    return _child;
  }

  T get borderSky700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade700;
    return _child;
  }

  T get borderSky800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade800;
    return _child;
  }

  T get borderSky900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.sky.shade900;
    return _child;
  }

  T get borderBlue {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue;
    return _child;
  }

  T get borderBlue50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade50;
    return _child;
  }

  T get borderBlue100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade100;
    return _child;
  }

  T get borderBlue200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade200;
    return _child;
  }

  T get borderBlue300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade300;
    return _child;
  }

  T get borderBlue400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade400;
    return _child;
  }

  T get borderBlue500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade500;
    return _child;
  }

  T get borderBlue600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade600;
    return _child;
  }

  T get borderBlue700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade700;
    return _child;
  }

  T get borderBlue800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade800;
    return _child;
  }

  T get borderBlue900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.blue.shade900;
    return _child;
  }

  T get borderIndigo {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo;
    return _child;
  }

  T get borderIndigo50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade50;
    return _child;
  }

  T get borderIndigo100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade100;
    return _child;
  }

  T get borderIndigo200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade200;
    return _child;
  }

  T get borderIndigo300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade300;
    return _child;
  }

  T get borderIndigo400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade400;
    return _child;
  }

  T get borderIndigo500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade500;
    return _child;
  }

  T get borderIndigo600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade600;
    return _child;
  }

  T get borderIndigo700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade700;
    return _child;
  }

  T get borderIndigo800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade800;
    return _child;
  }

  T get borderIndigo900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.indigo.shade900;
    return _child;
  }

  T get borderViolet {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet;
    return _child;
  }

  T get borderViolet50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade50;
    return _child;
  }

  T get borderViolet100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade100;
    return _child;
  }

  T get borderViolet200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade200;
    return _child;
  }

  T get borderViolet300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade300;
    return _child;
  }

  T get borderViolet400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade400;
    return _child;
  }

  T get borderViolet500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade500;
    return _child;
  }

  T get borderViolet600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade600;
    return _child;
  }

  T get borderViolet700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade700;
    return _child;
  }

  T get borderViolet800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade800;
    return _child;
  }

  T get borderViolet900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.violet.shade900;
    return _child;
  }

  T get borderPurple {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple;
    return _child;
  }

  T get borderPurple50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade50;
    return _child;
  }

  T get borderPurple100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade100;
    return _child;
  }

  T get borderPurple200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade200;
    return _child;
  }

  T get borderPurple300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade300;
    return _child;
  }

  T get borderPurple400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade400;
    return _child;
  }

  T get borderPurple500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade500;
    return _child;
  }

  T get borderPurple600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade600;
    return _child;
  }

  T get borderPurple700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade700;
    return _child;
  }

  T get borderPurple800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade800;
    return _child;
  }

  T get borderPurple900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.purple.shade900;
    return _child;
  }

  T get borderFuchsia {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia;
    return _child;
  }

  T get borderFuchsia50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade50;
    return _child;
  }

  T get borderFuchsia100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade100;
    return _child;
  }

  T get borderFuchsia200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade200;
    return _child;
  }

  T get borderFuchsia300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade300;
    return _child;
  }

  T get borderFuchsia400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade400;
    return _child;
  }

  T get borderFuchsia500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade500;
    return _child;
  }

  T get borderFuchsia600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade600;
    return _child;
  }

  T get borderFuchsia700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade700;
    return _child;
  }

  T get borderFuchsia800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade800;
    return _child;
  }

  T get borderFuchsia900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.fuchsia.shade900;
    return _child;
  }

  T get borderPink {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink;
    return _child;
  }

  T get borderPink50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade50;
    return _child;
  }

  T get borderPink100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade100;
    return _child;
  }

  T get borderPink200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade200;
    return _child;
  }

  T get borderPink300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade300;
    return _child;
  }

  T get borderPink400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade400;
    return _child;
  }

  T get borderPink500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade500;
    return _child;
  }

  T get borderPink600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade600;
    return _child;
  }

  T get borderPink700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade700;
    return _child;
  }

  T get borderPink800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade800;
    return _child;
  }

  T get borderPink900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.pink.shade900;
    return _child;
  }

  T get borderRose {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose;
    return _child;
  }

  T get borderRose50 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade50;
    return _child;
  }

  T get borderRose100 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade100;
    return _child;
  }

  T get borderRose200 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade200;
    return _child;
  }

  T get borderRose300 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade300;
    return _child;
  }

  T get borderRose400 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade400;
    return _child;
  }

  T get borderRose500 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade500;
    return _child;
  }

  T get borderRose600 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade600;
    return _child;
  }

  T get borderRose700 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade700;
    return _child;
  }

  T get borderRose800 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade800;
    return _child;
  }

  T get borderRose900 {
    if (!_needsDarkVariant) gxBorderColor = GxColors.rose.shade900;
    return _child;
  }
}
