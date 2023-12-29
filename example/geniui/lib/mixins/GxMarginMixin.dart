import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxMarginMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _gxMargin;

  double marginLeft = 0;

  double marginTop = 0;

  double marginRight = 0;

  double marginBottom = 0;

  void setChildForMargining(T child) {
    _child = child;
  }

  /// Sets the margin property of the box.
  T withMargin(EdgeInsetsGeometry val) {
    _gxMargin = val;
    return _child;
  }

  EdgeInsetsGeometry get twMargin {
    _gxMargin =
        EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom);
    return _gxMargin!;
  }

  /// Custom All Side Margin
  T margin(dynamic val) {
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  }

  T m(dynamic val) {
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  }

  /// Custom Horizontal Margin
  T mx(dynamic val) {
    marginLeft = val;
    marginRight = val;
    return _child;
  }

  /// Custom Vertical Margin
  T my(dynamic val) {
    marginTop = val;
    marginBottom = val;
    return _child;
  }

  /// Custom Left Margin
  T ml(dynamic val) {
    marginLeft = val;
    return _child;
  }

  /// Custom Top Margin
  T mt(dynamic val) {
    marginTop = val;
    return _child;
  }

  /// Custom Right Margin
  T mr(dynamic val) {
    marginRight = val;
    return _child;
  }

  /// Custom Bottom Margin
  T mb(dynamic val) {
    marginBottom = val;
    return _child;
  }

  /// All Side Margin
  T get m0 {
    marginLeft = GxSizes.spacer0;
    marginTop = GxSizes.spacer0;
    marginRight = GxSizes.spacer0;
    marginBottom = GxSizes.spacer0;
    return _child;
  }

  T get m1 {
    marginLeft = GxSizes.spacer1;
    marginTop = GxSizes.spacer1;
    marginRight = GxSizes.spacer1;
    marginBottom = GxSizes.spacer1;
    return _child;
  }

  T get m2 {
    marginLeft = GxSizes.spacer2;
    marginTop = GxSizes.spacer2;
    marginRight = GxSizes.spacer2;
    marginBottom = GxSizes.spacer2;
    return _child;
  }

  T get m3 {
    marginLeft = GxSizes.spacer3;
    marginTop = GxSizes.spacer3;
    marginRight = GxSizes.spacer3;
    marginBottom = GxSizes.spacer3;
    return _child;
  }

  T get m4 {
    marginLeft = GxSizes.spacer4;
    marginTop = GxSizes.spacer4;
    marginRight = GxSizes.spacer4;
    marginBottom = GxSizes.spacer4;
    return _child;
  }

  T get m5 {
    marginLeft = GxSizes.spacer5;
    marginTop = GxSizes.spacer5;
    marginRight = GxSizes.spacer5;
    marginBottom = GxSizes.spacer5;
    return _child;
  }

  T get m6 {
    marginLeft = GxSizes.spacer6;
    marginTop = GxSizes.spacer6;
    marginRight = GxSizes.spacer6;
    marginBottom = GxSizes.spacer6;
    return _child;
  }

  T get m7 {
    marginLeft = GxSizes.spacer7;
    marginTop = GxSizes.spacer7;
    marginRight = GxSizes.spacer7;
    marginBottom = GxSizes.spacer7;
    return _child;
  }

  T get m8 {
    marginLeft = GxSizes.spacer8;
    marginTop = GxSizes.spacer8;
    marginRight = GxSizes.spacer8;
    marginBottom = GxSizes.spacer8;
    return _child;
  }

  T get m9 {
    marginLeft = GxSizes.spacer9;
    marginTop = GxSizes.spacer9;
    marginRight = GxSizes.spacer9;
    marginBottom = GxSizes.spacer9;
    return _child;
  }

  T get m10 {
    marginLeft = GxSizes.spacer10;
    marginTop = GxSizes.spacer10;
    marginRight = GxSizes.spacer10;
    marginBottom = GxSizes.spacer10;
    return _child;
  }

  T get m11 {
    marginLeft = GxSizes.spacer11;
    marginTop = GxSizes.spacer11;
    marginRight = GxSizes.spacer11;
    marginBottom = GxSizes.spacer11;
    return _child;
  }

  T get m12 {
    marginLeft = GxSizes.spacer12;
    marginTop = GxSizes.spacer12;
    marginRight = GxSizes.spacer12;
    marginBottom = GxSizes.spacer12;
    return _child;
  }

  T get m14 {
    marginLeft = GxSizes.spacer14;
    marginTop = GxSizes.spacer14;
    marginRight = GxSizes.spacer14;
    marginBottom = GxSizes.spacer14;
    return _child;
  }

  T get m16 {
    marginLeft = GxSizes.spacer16;
    marginTop = GxSizes.spacer16;
    marginRight = GxSizes.spacer16;
    marginBottom = GxSizes.spacer16;
    return _child;
  }

  T get m20 {
    marginLeft = GxSizes.spacer20;
    marginTop = GxSizes.spacer20;
    marginRight = GxSizes.spacer20;
    marginBottom = GxSizes.spacer20;
    return _child;
  }

  T get m24 {
    marginLeft = GxSizes.spacer24;
    marginTop = GxSizes.spacer24;
    marginRight = GxSizes.spacer24;
    marginBottom = GxSizes.spacer24;
    return _child;
  }

  T get m28 {
    marginLeft = GxSizes.spacer28;
    marginTop = GxSizes.spacer28;
    marginRight = GxSizes.spacer28;
    marginBottom = GxSizes.spacer28;
    return _child;
  }

  T get m32 {
    marginLeft = GxSizes.spacer32;
    marginTop = GxSizes.spacer32;
    marginRight = GxSizes.spacer32;
    marginBottom = GxSizes.spacer32;
    return _child;
  }

  T get m36 {
    marginLeft = GxSizes.spacer36;
    marginTop = GxSizes.spacer36;
    marginRight = GxSizes.spacer36;
    marginBottom = GxSizes.spacer36;
    return _child;
  }

  T get m40 {
    marginLeft = GxSizes.spacer40;
    marginTop = GxSizes.spacer40;
    marginRight = GxSizes.spacer40;
    marginBottom = GxSizes.spacer40;
    return _child;
  }

  T get m44 {
    marginLeft = GxSizes.spacer44;
    marginTop = GxSizes.spacer44;
    marginRight = GxSizes.spacer44;
    marginBottom = GxSizes.spacer44;
    return _child;
  }

  T get m48 {
    marginLeft = GxSizes.spacer48;
    marginTop = GxSizes.spacer48;
    marginRight = GxSizes.spacer48;
    marginBottom = GxSizes.spacer48;
    return _child;
  }

  T get m52 {
    marginLeft = GxSizes.spacer52;
    marginTop = GxSizes.spacer52;
    marginRight = GxSizes.spacer52;
    marginBottom = GxSizes.spacer52;
    return _child;
  }

  T get m56 {
    marginLeft = GxSizes.spacer56;
    marginTop = GxSizes.spacer56;
    marginRight = GxSizes.spacer56;
    marginBottom = GxSizes.spacer56;
    return _child;
  }

  T get m60 {
    marginLeft = GxSizes.spacer60;
    marginTop = GxSizes.spacer60;
    marginRight = GxSizes.spacer60;
    marginBottom = GxSizes.spacer60;
    return _child;
  }

  T get m64 {
    marginLeft = GxSizes.spacer64;
    marginTop = GxSizes.spacer64;
    marginRight = GxSizes.spacer64;
    marginBottom = GxSizes.spacer64;
    return _child;
  }

  /// Horizontal Margin
  T get mx0 {
    marginLeft = GxSizes.spacer0;
    marginRight = GxSizes.spacer0;
    return _child;
  }

  T get mx1 {
    marginLeft = GxSizes.spacer1;
    marginRight = GxSizes.spacer1;
    return _child;
  }

  T get mx2 {
    marginLeft = GxSizes.spacer2;
    marginRight = GxSizes.spacer2;
    return _child;
  }

  T get mx3 {
    marginLeft = GxSizes.spacer3;
    marginRight = GxSizes.spacer3;
    return _child;
  }

  T get mx4 {
    marginLeft = GxSizes.spacer4;
    marginRight = GxSizes.spacer4;
    return _child;
  }

  T get mx5 {
    marginLeft = GxSizes.spacer5;
    marginRight = GxSizes.spacer5;
    return _child;
  }

  T get mx6 {
    marginLeft = GxSizes.spacer6;
    marginRight = GxSizes.spacer6;
    return _child;
  }

  T get mx7 {
    marginLeft = GxSizes.spacer7;
    marginRight = GxSizes.spacer7;
    return _child;
  }

  T get mx8 {
    marginLeft = GxSizes.spacer8;
    marginRight = GxSizes.spacer8;
    return _child;
  }

  T get mx9 {
    marginLeft = GxSizes.spacer9;
    marginRight = GxSizes.spacer9;
    return _child;
  }

  T get mx10 {
    marginLeft = GxSizes.spacer10;
    marginRight = GxSizes.spacer10;
    return _child;
  }

  T get mx11 {
    marginLeft = GxSizes.spacer11;
    marginRight = GxSizes.spacer11;
    return _child;
  }

  T get mx12 {
    marginLeft = GxSizes.spacer12;
    marginRight = GxSizes.spacer12;
    return _child;
  }

  T get mx14 {
    marginLeft = GxSizes.spacer14;
    marginRight = GxSizes.spacer14;
    return _child;
  }

  T get mx16 {
    marginLeft = GxSizes.spacer16;
    marginRight = GxSizes.spacer16;
    return _child;
  }

  T get mx20 {
    marginLeft = GxSizes.spacer20;
    marginRight = GxSizes.spacer20;
    return _child;
  }

  T get mx24 {
    marginLeft = GxSizes.spacer24;
    marginRight = GxSizes.spacer24;
    return _child;
  }

  T get mx28 {
    marginLeft = GxSizes.spacer28;
    marginRight = GxSizes.spacer28;
    return _child;
  }

  T get mx32 {
    marginLeft = GxSizes.spacer32;
    marginRight = GxSizes.spacer32;
    return _child;
  }

  T get mx36 {
    marginLeft = GxSizes.spacer36;
    marginRight = GxSizes.spacer36;
    return _child;
  }

  T get mx40 {
    marginLeft = GxSizes.spacer40;
    marginRight = GxSizes.spacer40;
    return _child;
  }

  T get mx44 {
    marginLeft = GxSizes.spacer44;
    marginRight = GxSizes.spacer44;
    return _child;
  }

  T get mx48 {
    marginLeft = GxSizes.spacer48;
    marginRight = GxSizes.spacer48;
    return _child;
  }

  T get mx52 {
    marginLeft = GxSizes.spacer52;
    marginRight = GxSizes.spacer52;
    return _child;
  }

  T get mx56 {
    marginLeft = GxSizes.spacer56;
    marginRight = GxSizes.spacer56;
    return _child;
  }

  T get mx60 {
    marginLeft = GxSizes.spacer60;
    marginRight = GxSizes.spacer60;
    return _child;
  }

  T get mx64 {
    marginLeft = GxSizes.spacer64;
    marginRight = GxSizes.spacer64;
    return _child;
  }

  /// Vertical Margin
  T get my0 {
    marginTop = GxSizes.spacer0;
    marginBottom = GxSizes.spacer0;
    return _child;
  }

  T get my1 {
    marginTop = GxSizes.spacer1;
    marginBottom = GxSizes.spacer1;
    return _child;
  }

  T get my2 {
    marginTop = GxSizes.spacer2;
    marginBottom = GxSizes.spacer2;
    return _child;
  }

  T get my3 {
    marginTop = GxSizes.spacer3;
    marginBottom = GxSizes.spacer3;
    return _child;
  }

  T get my4 {
    marginTop = GxSizes.spacer4;
    marginBottom = GxSizes.spacer4;
    return _child;
  }

  T get my5 {
    marginTop = GxSizes.spacer5;
    marginBottom = GxSizes.spacer5;
    return _child;
  }

  T get my6 {
    marginTop = GxSizes.spacer6;
    marginBottom = GxSizes.spacer6;
    return _child;
  }

  T get my7 {
    marginTop = GxSizes.spacer7;
    marginBottom = GxSizes.spacer7;
    return _child;
  }

  T get my8 {
    marginTop = GxSizes.spacer8;
    marginBottom = GxSizes.spacer8;
    return _child;
  }

  T get my9 {
    marginTop = GxSizes.spacer9;
    marginBottom = GxSizes.spacer9;
    return _child;
  }

  T get my10 {
    marginTop = GxSizes.spacer10;
    marginBottom = GxSizes.spacer10;
    return _child;
  }

  T get my11 {
    marginTop = GxSizes.spacer11;
    marginBottom = GxSizes.spacer11;
    return _child;
  }

  T get my12 {
    marginTop = GxSizes.spacer12;
    marginBottom = GxSizes.spacer12;
    return _child;
  }

  T get my14 {
    marginTop = GxSizes.spacer14;
    marginBottom = GxSizes.spacer14;
    return _child;
  }

  T get my16 {
    marginTop = GxSizes.spacer16;
    marginBottom = GxSizes.spacer16;
    return _child;
  }

  T get my20 {
    marginTop = GxSizes.spacer20;
    marginBottom = GxSizes.spacer20;
    return _child;
  }

  T get my24 {
    marginTop = GxSizes.spacer24;
    marginBottom = GxSizes.spacer24;
    return _child;
  }

  T get my28 {
    marginTop = GxSizes.spacer28;
    marginBottom = GxSizes.spacer28;
    return _child;
  }

  T get my32 {
    marginTop = GxSizes.spacer32;
    marginBottom = GxSizes.spacer32;
    return _child;
  }

  T get my36 {
    marginTop = GxSizes.spacer36;
    marginBottom = GxSizes.spacer36;
    return _child;
  }

  T get my40 {
    marginTop = GxSizes.spacer40;
    marginBottom = GxSizes.spacer40;
    return _child;
  }

  T get my44 {
    marginTop = GxSizes.spacer44;
    marginBottom = GxSizes.spacer44;
    return _child;
  }

  T get my48 {
    marginTop = GxSizes.spacer48;
    marginBottom = GxSizes.spacer48;
    return _child;
  }

  T get my52 {
    marginTop = GxSizes.spacer52;
    marginBottom = GxSizes.spacer52;
    return _child;
  }

  T get my56 {
    marginTop = GxSizes.spacer56;
    marginBottom = GxSizes.spacer56;
    return _child;
  }

  T get my60 {
    marginTop = GxSizes.spacer60;
    marginBottom = GxSizes.spacer60;
    return _child;
  }

  T get my64 {
    marginTop = GxSizes.spacer64;
    marginBottom = GxSizes.spacer64;
    return _child;
  }

  /// Left Margin
  T get ml0 {
    marginLeft = GxSizes.spacer0;
    return _child;
  }

  T get ml1 {
    marginLeft = GxSizes.spacer1;
    return _child;
  }

  T get ml2 {
    marginLeft = GxSizes.spacer2;
    return _child;
  }

  T get ml3 {
    marginLeft = GxSizes.spacer3;
    return _child;
  }

  T get ml4 {
    marginLeft = GxSizes.spacer4;
    return _child;
  }

  T get ml5 {
    marginLeft = GxSizes.spacer5;
    return _child;
  }

  T get ml6 {
    marginLeft = GxSizes.spacer6;
    return _child;
  }

  T get ml7 {
    marginLeft = GxSizes.spacer7;
    return _child;
  }

  T get ml8 {
    marginLeft = GxSizes.spacer8;
    return _child;
  }

  T get ml9 {
    marginLeft = GxSizes.spacer9;
    return _child;
  }

  T get ml10 {
    marginLeft = GxSizes.spacer10;
    return _child;
  }

  T get ml11 {
    marginLeft = GxSizes.spacer11;
    return _child;
  }

  T get ml12 {
    marginLeft = GxSizes.spacer12;
    return _child;
  }

  T get ml14 {
    marginLeft = GxSizes.spacer14;
    return _child;
  }

  T get ml16 {
    marginLeft = GxSizes.spacer16;
    return _child;
  }

  T get ml20 {
    marginLeft = GxSizes.spacer20;
    return _child;
  }

  T get ml24 {
    marginLeft = GxSizes.spacer24;
    return _child;
  }

  T get ml28 {
    marginLeft = GxSizes.spacer28;
    return _child;
  }

  T get ml32 {
    marginLeft = GxSizes.spacer32;
    return _child;
  }

  T get ml36 {
    marginLeft = GxSizes.spacer36;
    return _child;
  }

  T get ml40 {
    marginLeft = GxSizes.spacer40;
    return _child;
  }

  T get ml44 {
    marginLeft = GxSizes.spacer44;
    return _child;
  }

  T get ml48 {
    marginLeft = GxSizes.spacer48;
    return _child;
  }

  T get ml52 {
    marginLeft = GxSizes.spacer52;
    return _child;
  }

  T get ml56 {
    marginLeft = GxSizes.spacer56;
    return _child;
  }

  T get ml60 {
    marginLeft = GxSizes.spacer60;
    return _child;
  }

  T get ml64 {
    marginLeft = GxSizes.spacer64;
    return _child;
  }

  /// Right Margin
  T get mt0 {
    marginTop = GxSizes.spacer0;
    return _child;
  }

  T get mt1 {
    marginTop = GxSizes.spacer1;
    return _child;
  }

  T get mt2 {
    marginTop = GxSizes.spacer2;
    return _child;
  }

  T get mt3 {
    marginTop = GxSizes.spacer3;
    return _child;
  }

  T get mt4 {
    marginTop = GxSizes.spacer4;
    return _child;
  }

  T get mt5 {
    marginTop = GxSizes.spacer5;
    return _child;
  }

  T get mt6 {
    marginTop = GxSizes.spacer6;
    return _child;
  }

  T get mt7 {
    marginTop = GxSizes.spacer7;
    return _child;
  }

  T get mt8 {
    marginTop = GxSizes.spacer8;
    return _child;
  }

  T get mt9 {
    marginTop = GxSizes.spacer9;
    return _child;
  }

  T get mt10 {
    marginTop = GxSizes.spacer10;
    return _child;
  }

  T get mt11 {
    marginTop = GxSizes.spacer11;
    return _child;
  }

  T get mt12 {
    marginTop = GxSizes.spacer12;
    return _child;
  }

  T get mt14 {
    marginTop = GxSizes.spacer14;
    return _child;
  }

  T get mt16 {
    marginTop = GxSizes.spacer16;
    return _child;
  }

  T get mt20 {
    marginTop = GxSizes.spacer20;
    return _child;
  }

  T get mt24 {
    marginTop = GxSizes.spacer24;
    return _child;
  }

  T get mt28 {
    marginTop = GxSizes.spacer28;
    return _child;
  }

  T get mt32 {
    marginTop = GxSizes.spacer32;
    return _child;
  }

  T get mt36 {
    marginTop = GxSizes.spacer36;
    return _child;
  }

  T get mt40 {
    marginTop = GxSizes.spacer40;
    return _child;
  }

  T get mt44 {
    marginTop = GxSizes.spacer44;
    return _child;
  }

  T get mt48 {
    marginTop = GxSizes.spacer48;
    return _child;
  }

  T get mt52 {
    marginTop = GxSizes.spacer52;
    return _child;
  }

  T get mt56 {
    marginTop = GxSizes.spacer56;
    return _child;
  }

  T get mt60 {
    marginTop = GxSizes.spacer60;
    return _child;
  }

  T get mt64 {
    marginTop = GxSizes.spacer64;
    return _child;
  }

  /// Right Margin
  T get mr0 {
    marginRight = GxSizes.spacer0;
    return _child;
  }

  T get mr1 {
    marginRight = GxSizes.spacer1;
    return _child;
  }

  T get mr2 {
    marginRight = GxSizes.spacer2;
    return _child;
  }

  T get mr3 {
    marginRight = GxSizes.spacer3;
    return _child;
  }

  T get mr4 {
    marginRight = GxSizes.spacer4;
    return _child;
  }

  T get mr5 {
    marginRight = GxSizes.spacer5;
    return _child;
  }

  T get mr6 {
    marginRight = GxSizes.spacer6;
    return _child;
  }

  T get mr7 {
    marginRight = GxSizes.spacer7;
    return _child;
  }

  T get mr8 {
    marginRight = GxSizes.spacer8;
    return _child;
  }

  T get mr9 {
    marginRight = GxSizes.spacer9;
    return _child;
  }

  T get mr10 {
    marginRight = GxSizes.spacer10;
    return _child;
  }

  T get mr11 {
    marginRight = GxSizes.spacer11;
    return _child;
  }

  T get mr12 {
    marginRight = GxSizes.spacer12;
    return _child;
  }

  T get mr14 {
    marginRight = GxSizes.spacer14;
    return _child;
  }

  T get mr16 {
    marginRight = GxSizes.spacer16;
    return _child;
  }

  T get mr20 {
    marginRight = GxSizes.spacer20;
    return _child;
  }

  T get mr24 {
    marginRight = GxSizes.spacer24;
    return _child;
  }

  T get mr28 {
    marginRight = GxSizes.spacer28;
    return _child;
  }

  T get mr32 {
    marginRight = GxSizes.spacer32;
    return _child;
  }

  T get mr36 {
    marginRight = GxSizes.spacer36;
    return _child;
  }

  T get mr40 {
    marginRight = GxSizes.spacer40;
    return _child;
  }

  T get mr44 {
    marginRight = GxSizes.spacer44;
    return _child;
  }

  T get mr48 {
    marginRight = GxSizes.spacer48;
    return _child;
  }

  T get mr52 {
    marginRight = GxSizes.spacer52;
    return _child;
  }

  T get mr56 {
    marginRight = GxSizes.spacer56;
    return _child;
  }

  T get mr60 {
    marginRight = GxSizes.spacer60;
    return _child;
  }

  T get mr64 {
    marginRight = GxSizes.spacer64;
    return _child;
  }

  /// Bottom Padding
  T get mb0 {
    marginBottom = GxSizes.spacer0;
    return _child;
  }

  T get mb1 {
    marginBottom = GxSizes.spacer1;
    return _child;
  }

  T get mb2 {
    marginBottom = GxSizes.spacer2;
    return _child;
  }

  T get mb3 {
    marginBottom = GxSizes.spacer3;
    return _child;
  }

  T get mb4 {
    marginBottom = GxSizes.spacer4;
    return _child;
  }

  T get mb5 {
    marginBottom = GxSizes.spacer5;
    return _child;
  }

  T get mb6 {
    marginBottom = GxSizes.spacer6;
    return _child;
  }

  T get mb7 {
    marginBottom = GxSizes.spacer7;
    return _child;
  }

  T get mb8 {
    marginBottom = GxSizes.spacer8;
    return _child;
  }

  T get mb9 {
    marginBottom = GxSizes.spacer9;
    return _child;
  }

  T get mb10 {
    marginBottom = GxSizes.spacer10;
    return _child;
  }

  T get mb11 {
    marginBottom = GxSizes.spacer11;
    return _child;
  }

  T get mb12 {
    marginBottom = GxSizes.spacer12;
    return _child;
  }

  T get mb14 {
    marginBottom = GxSizes.spacer14;
    return _child;
  }

  T get mb16 {
    marginBottom = GxSizes.spacer16;
    return _child;
  }

  T get mb20 {
    marginBottom = GxSizes.spacer20;
    return _child;
  }

  T get mb24 {
    marginBottom = GxSizes.spacer24;
    return _child;
  }

  T get mb28 {
    marginBottom = GxSizes.spacer28;
    return _child;
  }

  T get mb32 {
    marginBottom = GxSizes.spacer32;
    return _child;
  }

  T get mb36 {
    marginBottom = GxSizes.spacer36;
    return _child;
  }

  T get mb40 {
    marginBottom = GxSizes.spacer40;
    return _child;
  }

  T get mb44 {
    marginBottom = GxSizes.spacer44;
    return _child;
  }

  T get mb48 {
    marginBottom = GxSizes.spacer48;
    return _child;
  }

  T get mb52 {
    marginBottom = GxSizes.spacer52;
    return _child;
  }

  T get mb56 {
    marginBottom = GxSizes.spacer56;
    return _child;
  }

  T get mb60 {
    marginBottom = GxSizes.spacer60;
    return _child;
  }

  T get mb64 {
    marginBottom = GxSizes.spacer64;
    return _child;
  }
}
