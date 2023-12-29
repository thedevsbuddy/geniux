import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxPaddingMixin<T> {
  late T _child;

  EdgeInsetsGeometry? _gxPadding;

  double paddingLeft = 0;

  double paddingTop = 0;

  double paddingRight = 0;

  double paddingBottom = 0;

  void setChildForPadding(T child) {
    _child = child;
  }

  /// Sets the padding property of the box.
  T withPadding(EdgeInsetsGeometry val) {
    _gxPadding = val;
    return _child;
  }

  EdgeInsetsGeometry get twPadding {
    _gxPadding = EdgeInsets.fromLTRB(
        paddingLeft, paddingTop, paddingRight, paddingBottom);
    return _gxPadding!;
  }

  // Custom All Side Padding
  T padding(dynamic val) {
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  T p(dynamic val) {
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  /// Custom Horizontal Padding
  T px(dynamic val) {
    paddingLeft = val;
    paddingRight = val;
    return _child;
  }

  /// Custom Vertic al Padding
  T py(dynamic val) {
    paddingTop = val;
    paddingBottom = val;
    return _child;
  }

  /// Custom Left Padding
  T pl(dynamic val) {
    paddingLeft = val;
    return _child;
  }

  /// Custom Top Padding
  T pt(dynamic val) {
    paddingTop = val;
    return _child;
  }

  /// Custom Right Padding
  T pr(dynamic val) {
    paddingRight = val;
    return _child;
  }

  /// Custom Bottom Padding
  T pb(dynamic val) {
    paddingBottom = val;
    return _child;
  }

  /// All Side Padding
  T get p0 {
    paddingLeft = GxSizes.spacer0;
    paddingTop = GxSizes.spacer0;
    paddingRight = GxSizes.spacer0;
    paddingBottom = GxSizes.spacer0;
    return _child;
  }

  T get p1 {
    paddingLeft = GxSizes.spacer1;
    paddingTop = GxSizes.spacer1;
    paddingRight = GxSizes.spacer1;
    paddingBottom = GxSizes.spacer1;
    return _child;
  }

  T get p2 {
    paddingLeft = GxSizes.spacer2;
    paddingTop = GxSizes.spacer2;
    paddingRight = GxSizes.spacer2;
    paddingBottom = GxSizes.spacer2;
    return _child;
  }

  T get p3 {
    paddingLeft = GxSizes.spacer3;
    paddingTop = GxSizes.spacer3;
    paddingRight = GxSizes.spacer3;
    paddingBottom = GxSizes.spacer3;
    return _child;
  }

  T get p4 {
    paddingLeft = GxSizes.spacer4;
    paddingTop = GxSizes.spacer4;
    paddingRight = GxSizes.spacer4;
    paddingBottom = GxSizes.spacer4;
    return _child;
  }

  T get p5 {
    paddingLeft = GxSizes.spacer5;
    paddingTop = GxSizes.spacer5;
    paddingRight = GxSizes.spacer5;
    paddingBottom = GxSizes.spacer5;
    return _child;
  }

  T get p6 {
    paddingLeft = GxSizes.spacer6;
    paddingTop = GxSizes.spacer6;
    paddingRight = GxSizes.spacer6;
    paddingBottom = GxSizes.spacer6;
    return _child;
  }

  T get p7 {
    paddingLeft = GxSizes.spacer7;
    paddingTop = GxSizes.spacer7;
    paddingRight = GxSizes.spacer7;
    paddingBottom = GxSizes.spacer7;
    return _child;
  }

  T get p8 {
    paddingLeft = GxSizes.spacer8;
    paddingTop = GxSizes.spacer8;
    paddingRight = GxSizes.spacer8;
    paddingBottom = GxSizes.spacer8;
    return _child;
  }

  T get p9 {
    paddingLeft = GxSizes.spacer9;
    paddingTop = GxSizes.spacer9;
    paddingRight = GxSizes.spacer9;
    paddingBottom = GxSizes.spacer9;
    return _child;
  }

  T get p10 {
    paddingLeft = GxSizes.spacer10;
    paddingTop = GxSizes.spacer10;
    paddingRight = GxSizes.spacer10;
    paddingBottom = GxSizes.spacer10;
    return _child;
  }

  T get p11 {
    paddingLeft = GxSizes.spacer11;
    paddingTop = GxSizes.spacer11;
    paddingRight = GxSizes.spacer11;
    paddingBottom = GxSizes.spacer11;
    return _child;
  }

  T get p12 {
    paddingLeft = GxSizes.spacer12;
    paddingTop = GxSizes.spacer12;
    paddingRight = GxSizes.spacer12;
    paddingBottom = GxSizes.spacer12;
    return _child;
  }

  T get p14 {
    paddingLeft = GxSizes.spacer14;
    paddingTop = GxSizes.spacer14;
    paddingRight = GxSizes.spacer14;
    paddingBottom = GxSizes.spacer14;
    return _child;
  }

  T get p16 {
    paddingLeft = GxSizes.spacer16;
    paddingTop = GxSizes.spacer16;
    paddingRight = GxSizes.spacer16;
    paddingBottom = GxSizes.spacer16;
    return _child;
  }

  T get p20 {
    paddingLeft = GxSizes.spacer20;
    paddingTop = GxSizes.spacer20;
    paddingRight = GxSizes.spacer20;
    paddingBottom = GxSizes.spacer20;
    return _child;
  }

  T get p24 {
    paddingLeft = GxSizes.spacer24;
    paddingTop = GxSizes.spacer24;
    paddingRight = GxSizes.spacer24;
    paddingBottom = GxSizes.spacer24;
    return _child;
  }

  T get p28 {
    paddingLeft = GxSizes.spacer28;
    paddingTop = GxSizes.spacer28;
    paddingRight = GxSizes.spacer28;
    paddingBottom = GxSizes.spacer28;
    return _child;
  }

  T get p32 {
    paddingLeft = GxSizes.spacer32;
    paddingTop = GxSizes.spacer32;
    paddingRight = GxSizes.spacer32;
    paddingBottom = GxSizes.spacer32;
    return _child;
  }

  T get p36 {
    paddingLeft = GxSizes.spacer36;
    paddingTop = GxSizes.spacer36;
    paddingRight = GxSizes.spacer36;
    paddingBottom = GxSizes.spacer36;
    return _child;
  }

  T get p40 {
    paddingLeft = GxSizes.spacer40;
    paddingTop = GxSizes.spacer40;
    paddingRight = GxSizes.spacer40;
    paddingBottom = GxSizes.spacer40;
    return _child;
  }

  T get p44 {
    paddingLeft = GxSizes.spacer44;
    paddingTop = GxSizes.spacer44;
    paddingRight = GxSizes.spacer44;
    paddingBottom = GxSizes.spacer44;
    return _child;
  }

  T get p48 {
    paddingLeft = GxSizes.spacer48;
    paddingTop = GxSizes.spacer48;
    paddingRight = GxSizes.spacer48;
    paddingBottom = GxSizes.spacer48;
    return _child;
  }

  T get p52 {
    paddingLeft = GxSizes.spacer52;
    paddingTop = GxSizes.spacer52;
    paddingRight = GxSizes.spacer52;
    paddingBottom = GxSizes.spacer52;
    return _child;
  }

  T get p56 {
    paddingLeft = GxSizes.spacer56;
    paddingTop = GxSizes.spacer56;
    paddingRight = GxSizes.spacer56;
    paddingBottom = GxSizes.spacer56;
    return _child;
  }

  T get p60 {
    paddingLeft = GxSizes.spacer60;
    paddingTop = GxSizes.spacer60;
    paddingRight = GxSizes.spacer60;
    paddingBottom = GxSizes.spacer60;
    return _child;
  }

  T get p64 {
    paddingLeft = GxSizes.spacer64;
    paddingTop = GxSizes.spacer64;
    paddingRight = GxSizes.spacer64;
    paddingBottom = GxSizes.spacer64;
    return _child;
  }

  /// Horizontal Padding
  T get px0 {
    paddingLeft = GxSizes.spacer0;
    paddingRight = GxSizes.spacer0;
    return _child;
  }

  T get px1 {
    paddingLeft = GxSizes.spacer1;
    paddingRight = GxSizes.spacer1;
    return _child;
  }

  T get px2 {
    paddingLeft = GxSizes.spacer2;
    paddingRight = GxSizes.spacer2;
    return _child;
  }

  T get px3 {
    paddingLeft = GxSizes.spacer3;
    paddingRight = GxSizes.spacer3;
    return _child;
  }

  T get px4 {
    paddingLeft = GxSizes.spacer4;
    paddingRight = GxSizes.spacer4;
    return _child;
  }

  T get px5 {
    paddingLeft = GxSizes.spacer5;
    paddingRight = GxSizes.spacer5;
    return _child;
  }

  T get px6 {
    paddingLeft = GxSizes.spacer6;
    paddingRight = GxSizes.spacer6;
    return _child;
  }

  T get px7 {
    paddingLeft = GxSizes.spacer7;
    paddingRight = GxSizes.spacer7;
    return _child;
  }

  T get px8 {
    paddingLeft = GxSizes.spacer8;
    paddingRight = GxSizes.spacer8;
    return _child;
  }

  T get px9 {
    paddingLeft = GxSizes.spacer9;
    paddingRight = GxSizes.spacer9;
    return _child;
  }

  T get px10 {
    paddingLeft = GxSizes.spacer10;
    paddingRight = GxSizes.spacer10;
    return _child;
  }

  T get px11 {
    paddingLeft = GxSizes.spacer11;
    paddingRight = GxSizes.spacer11;
    return _child;
  }

  T get px12 {
    paddingLeft = GxSizes.spacer12;
    paddingRight = GxSizes.spacer12;
    return _child;
  }

  T get px14 {
    paddingLeft = GxSizes.spacer14;
    paddingRight = GxSizes.spacer14;
    return _child;
  }

  T get px16 {
    paddingLeft = GxSizes.spacer16;
    paddingRight = GxSizes.spacer16;
    return _child;
  }

  T get px20 {
    paddingLeft = GxSizes.spacer20;
    paddingRight = GxSizes.spacer20;
    return _child;
  }

  T get px24 {
    paddingLeft = GxSizes.spacer24;
    paddingRight = GxSizes.spacer24;
    return _child;
  }

  T get px28 {
    paddingLeft = GxSizes.spacer28;
    paddingRight = GxSizes.spacer28;
    return _child;
  }

  T get px32 {
    paddingLeft = GxSizes.spacer32;
    paddingRight = GxSizes.spacer32;
    return _child;
  }

  T get px36 {
    paddingLeft = GxSizes.spacer36;
    paddingRight = GxSizes.spacer36;
    return _child;
  }

  T get px40 {
    paddingLeft = GxSizes.spacer40;
    paddingRight = GxSizes.spacer40;
    return _child;
  }

  T get px44 {
    paddingLeft = GxSizes.spacer44;
    paddingRight = GxSizes.spacer44;
    return _child;
  }

  T get px48 {
    paddingLeft = GxSizes.spacer48;
    paddingRight = GxSizes.spacer48;
    return _child;
  }

  T get px52 {
    paddingLeft = GxSizes.spacer52;
    paddingRight = GxSizes.spacer52;
    return _child;
  }

  T get px56 {
    paddingLeft = GxSizes.spacer56;
    paddingRight = GxSizes.spacer56;
    return _child;
  }

  T get px60 {
    paddingLeft = GxSizes.spacer60;
    paddingRight = GxSizes.spacer60;
    return _child;
  }

  T get px64 {
    paddingLeft = GxSizes.spacer64;
    paddingRight = GxSizes.spacer64;
    return _child;
  }

  /// Vertical Padding
  T get py0 {
    paddingTop = GxSizes.spacer0;
    paddingBottom = GxSizes.spacer0;
    return _child;
  }

  T get py1 {
    paddingTop = GxSizes.spacer1;
    paddingBottom = GxSizes.spacer1;
    return _child;
  }

  T get py2 {
    paddingTop = GxSizes.spacer2;
    paddingBottom = GxSizes.spacer2;
    return _child;
  }

  T get py3 {
    paddingTop = GxSizes.spacer3;
    paddingBottom = GxSizes.spacer3;
    return _child;
  }

  T get py4 {
    paddingTop = GxSizes.spacer4;
    paddingBottom = GxSizes.spacer4;
    return _child;
  }

  T get py5 {
    paddingTop = GxSizes.spacer5;
    paddingBottom = GxSizes.spacer5;
    return _child;
  }

  T get py6 {
    paddingTop = GxSizes.spacer6;
    paddingBottom = GxSizes.spacer6;
    return _child;
  }

  T get py7 {
    paddingTop = GxSizes.spacer7;
    paddingBottom = GxSizes.spacer7;
    return _child;
  }

  T get py8 {
    paddingTop = GxSizes.spacer8;
    paddingBottom = GxSizes.spacer8;
    return _child;
  }

  T get py9 {
    paddingTop = GxSizes.spacer9;
    paddingBottom = GxSizes.spacer9;
    return _child;
  }

  T get py10 {
    paddingTop = GxSizes.spacer10;
    paddingBottom = GxSizes.spacer10;
    return _child;
  }

  T get py11 {
    paddingTop = GxSizes.spacer11;
    paddingBottom = GxSizes.spacer11;
    return _child;
  }

  T get py12 {
    paddingTop = GxSizes.spacer12;
    paddingBottom = GxSizes.spacer12;
    return _child;
  }

  T get py14 {
    paddingTop = GxSizes.spacer14;
    paddingBottom = GxSizes.spacer14;
    return _child;
  }

  T get py16 {
    paddingTop = GxSizes.spacer16;
    paddingBottom = GxSizes.spacer16;
    return _child;
  }

  T get py20 {
    paddingTop = GxSizes.spacer20;
    paddingBottom = GxSizes.spacer20;
    return _child;
  }

  T get py24 {
    paddingTop = GxSizes.spacer24;
    paddingBottom = GxSizes.spacer24;
    return _child;
  }

  T get py28 {
    paddingTop = GxSizes.spacer28;
    paddingBottom = GxSizes.spacer28;
    return _child;
  }

  T get py32 {
    paddingTop = GxSizes.spacer32;
    paddingBottom = GxSizes.spacer32;
    return _child;
  }

  T get py36 {
    paddingTop = GxSizes.spacer36;
    paddingBottom = GxSizes.spacer36;
    return _child;
  }

  T get py40 {
    paddingTop = GxSizes.spacer40;
    paddingBottom = GxSizes.spacer40;
    return _child;
  }

  T get py44 {
    paddingTop = GxSizes.spacer44;
    paddingBottom = GxSizes.spacer44;
    return _child;
  }

  T get py48 {
    paddingTop = GxSizes.spacer48;
    paddingBottom = GxSizes.spacer48;
    return _child;
  }

  T get py52 {
    paddingTop = GxSizes.spacer52;
    paddingBottom = GxSizes.spacer52;
    return _child;
  }

  T get py56 {
    paddingTop = GxSizes.spacer56;
    paddingBottom = GxSizes.spacer56;
    return _child;
  }

  T get py60 {
    paddingTop = GxSizes.spacer60;
    paddingBottom = GxSizes.spacer60;
    return _child;
  }

  T get py64 {
    paddingTop = GxSizes.spacer64;
    paddingBottom = GxSizes.spacer64;
    return _child;
  }

  /// Left Padding
  T get pl0 {
    paddingLeft = GxSizes.spacer0;
    return _child;
  }

  T get pl1 {
    paddingLeft = GxSizes.spacer1;
    return _child;
  }

  T get pl2 {
    paddingLeft = GxSizes.spacer2;
    return _child;
  }

  T get pl3 {
    paddingLeft = GxSizes.spacer3;
    return _child;
  }

  T get pl4 {
    paddingLeft = GxSizes.spacer4;
    return _child;
  }

  T get pl5 {
    paddingLeft = GxSizes.spacer5;
    return _child;
  }

  T get pl6 {
    paddingLeft = GxSizes.spacer6;
    return _child;
  }

  T get pl7 {
    paddingLeft = GxSizes.spacer7;
    return _child;
  }

  T get pl8 {
    paddingLeft = GxSizes.spacer8;
    return _child;
  }

  T get pl9 {
    paddingLeft = GxSizes.spacer9;
    return _child;
  }

  T get pl10 {
    paddingLeft = GxSizes.spacer10;
    return _child;
  }

  T get pl11 {
    paddingLeft = GxSizes.spacer11;
    return _child;
  }

  T get pl12 {
    paddingLeft = GxSizes.spacer12;
    return _child;
  }

  T get pl14 {
    paddingLeft = GxSizes.spacer14;
    return _child;
  }

  T get pl16 {
    paddingLeft = GxSizes.spacer16;
    return _child;
  }

  T get pl20 {
    paddingLeft = GxSizes.spacer20;
    return _child;
  }

  T get pl24 {
    paddingLeft = GxSizes.spacer24;
    return _child;
  }

  T get pl28 {
    paddingLeft = GxSizes.spacer28;
    return _child;
  }

  T get pl32 {
    paddingLeft = GxSizes.spacer32;
    return _child;
  }

  T get pl36 {
    paddingLeft = GxSizes.spacer36;
    return _child;
  }

  T get pl40 {
    paddingLeft = GxSizes.spacer40;
    return _child;
  }

  T get pl44 {
    paddingLeft = GxSizes.spacer44;
    return _child;
  }

  T get pl48 {
    paddingLeft = GxSizes.spacer48;
    return _child;
  }

  T get pl52 {
    paddingLeft = GxSizes.spacer52;
    return _child;
  }

  T get pl56 {
    paddingLeft = GxSizes.spacer56;
    return _child;
  }

  T get pl60 {
    paddingLeft = GxSizes.spacer60;
    return _child;
  }

  T get pl64 {
    paddingLeft = GxSizes.spacer64;
    return _child;
  }

  /// Right Padding
  T get pt0 {
    paddingTop = GxSizes.spacer0;
    return _child;
  }

  T get pt1 {
    paddingTop = GxSizes.spacer1;
    return _child;
  }

  T get pt2 {
    paddingTop = GxSizes.spacer2;
    return _child;
  }

  T get pt3 {
    paddingTop = GxSizes.spacer3;
    return _child;
  }

  T get pt4 {
    paddingTop = GxSizes.spacer4;
    return _child;
  }

  T get pt5 {
    paddingTop = GxSizes.spacer5;
    return _child;
  }

  T get pt6 {
    paddingTop = GxSizes.spacer6;
    return _child;
  }

  T get pt7 {
    paddingTop = GxSizes.spacer7;
    return _child;
  }

  T get pt8 {
    paddingTop = GxSizes.spacer8;
    return _child;
  }

  T get pt9 {
    paddingTop = GxSizes.spacer9;
    return _child;
  }

  T get pt10 {
    paddingTop = GxSizes.spacer10;
    return _child;
  }

  T get pt11 {
    paddingTop = GxSizes.spacer11;
    return _child;
  }

  T get pt12 {
    paddingTop = GxSizes.spacer12;
    return _child;
  }

  T get pt14 {
    paddingTop = GxSizes.spacer14;
    return _child;
  }

  T get pt16 {
    paddingTop = GxSizes.spacer16;
    return _child;
  }

  T get pt20 {
    paddingTop = GxSizes.spacer20;
    return _child;
  }

  T get pt24 {
    paddingTop = GxSizes.spacer24;
    return _child;
  }

  T get pt28 {
    paddingTop = GxSizes.spacer28;
    return _child;
  }

  T get pt32 {
    paddingTop = GxSizes.spacer32;
    return _child;
  }

  T get pt36 {
    paddingTop = GxSizes.spacer36;
    return _child;
  }

  T get pt40 {
    paddingTop = GxSizes.spacer40;
    return _child;
  }

  T get pt44 {
    paddingTop = GxSizes.spacer44;
    return _child;
  }

  T get pt48 {
    paddingTop = GxSizes.spacer48;
    return _child;
  }

  T get pt52 {
    paddingTop = GxSizes.spacer52;
    return _child;
  }

  T get pt56 {
    paddingTop = GxSizes.spacer56;
    return _child;
  }

  T get pt60 {
    paddingTop = GxSizes.spacer60;
    return _child;
  }

  T get pt64 {
    paddingTop = GxSizes.spacer64;
    return _child;
  }

  /// Right Padding
  T get pr0 {
    paddingRight = GxSizes.spacer0;
    return _child;
  }

  T get pr1 {
    paddingRight = GxSizes.spacer1;
    return _child;
  }

  T get pr2 {
    paddingRight = GxSizes.spacer2;
    return _child;
  }

  T get pr3 {
    paddingRight = GxSizes.spacer3;
    return _child;
  }

  T get pr4 {
    paddingRight = GxSizes.spacer4;
    return _child;
  }

  T get pr5 {
    paddingRight = GxSizes.spacer5;
    return _child;
  }

  T get pr6 {
    paddingRight = GxSizes.spacer6;
    return _child;
  }

  T get pr7 {
    paddingRight = GxSizes.spacer7;
    return _child;
  }

  T get pr8 {
    paddingRight = GxSizes.spacer8;
    return _child;
  }

  T get pr9 {
    paddingRight = GxSizes.spacer9;
    return _child;
  }

  T get pr10 {
    paddingRight = GxSizes.spacer10;
    return _child;
  }

  T get pr11 {
    paddingRight = GxSizes.spacer11;
    return _child;
  }

  T get pr12 {
    paddingRight = GxSizes.spacer12;
    return _child;
  }

  T get pr14 {
    paddingRight = GxSizes.spacer14;
    return _child;
  }

  T get pr16 {
    paddingRight = GxSizes.spacer16;
    return _child;
  }

  T get pr20 {
    paddingRight = GxSizes.spacer20;
    return _child;
  }

  T get pr24 {
    paddingRight = GxSizes.spacer24;
    return _child;
  }

  T get pr28 {
    paddingRight = GxSizes.spacer28;
    return _child;
  }

  T get pr32 {
    paddingRight = GxSizes.spacer32;
    return _child;
  }

  T get pr36 {
    paddingRight = GxSizes.spacer36;
    return _child;
  }

  T get pr40 {
    paddingRight = GxSizes.spacer40;
    return _child;
  }

  T get pr44 {
    paddingRight = GxSizes.spacer44;
    return _child;
  }

  T get pr48 {
    paddingRight = GxSizes.spacer48;
    return _child;
  }

  T get pr52 {
    paddingRight = GxSizes.spacer52;
    return _child;
  }

  T get pr56 {
    paddingRight = GxSizes.spacer56;
    return _child;
  }

  T get pr60 {
    paddingRight = GxSizes.spacer60;
    return _child;
  }

  T get pr64 {
    paddingRight = GxSizes.spacer64;
    return _child;
  }

  /// Bottom Padding
  T get pb0 {
    paddingBottom = GxSizes.spacer0;
    return _child;
  }

  T get pb1 {
    paddingBottom = GxSizes.spacer1;
    return _child;
  }

  T get pb2 {
    paddingBottom = GxSizes.spacer2;
    return _child;
  }

  T get pb3 {
    paddingBottom = GxSizes.spacer3;
    return _child;
  }

  T get pb4 {
    paddingBottom = GxSizes.spacer4;
    return _child;
  }

  T get pb5 {
    paddingBottom = GxSizes.spacer5;
    return _child;
  }

  T get pb6 {
    paddingBottom = GxSizes.spacer6;
    return _child;
  }

  T get pb7 {
    paddingBottom = GxSizes.spacer7;
    return _child;
  }

  T get pb8 {
    paddingBottom = GxSizes.spacer8;
    return _child;
  }

  T get pb9 {
    paddingBottom = GxSizes.spacer9;
    return _child;
  }

  T get pb10 {
    paddingBottom = GxSizes.spacer10;
    return _child;
  }

  T get pb11 {
    paddingBottom = GxSizes.spacer11;
    return _child;
  }

  T get pb12 {
    paddingBottom = GxSizes.spacer12;
    return _child;
  }

  T get pb14 {
    paddingBottom = GxSizes.spacer14;
    return _child;
  }

  T get pb16 {
    paddingBottom = GxSizes.spacer16;
    return _child;
  }

  T get pb20 {
    paddingBottom = GxSizes.spacer20;
    return _child;
  }

  T get pb24 {
    paddingBottom = GxSizes.spacer24;
    return _child;
  }

  T get pb28 {
    paddingBottom = GxSizes.spacer28;
    return _child;
  }

  T get pb32 {
    paddingBottom = GxSizes.spacer32;
    return _child;
  }

  T get pb36 {
    paddingBottom = GxSizes.spacer36;
    return _child;
  }

  T get pb40 {
    paddingBottom = GxSizes.spacer40;
    return _child;
  }

  T get pb44 {
    paddingBottom = GxSizes.spacer44;
    return _child;
  }

  T get pb48 {
    paddingBottom = GxSizes.spacer48;
    return _child;
  }

  T get pb52 {
    paddingBottom = GxSizes.spacer52;
    return _child;
  }

  T get pb56 {
    paddingBottom = GxSizes.spacer56;
    return _child;
  }

  T get pb60 {
    paddingBottom = GxSizes.spacer60;
    return _child;
  }

  T get pb64 {
    paddingBottom = GxSizes.spacer64;
    return _child;
  }
}
