import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

mixin GxSizeMixin<T> {
  late T _child;

  double? gxWidth;

  double? gxHeight;

  void setChildForSizing(T child) {
    _child = child;
  }

  T square(double value) {
    gxHeight = value;
    gxWidth = value;
    return _child;
  }

  /// Sets the size (width & height) property of the box.
  T size(double width, double height) {
    gxWidth = width;
    gxHeight = height;
    return _child;
  }

  /// Sets the height property of the box.
  T height(double value) {
    gxHeight = value;
    return _child;
  }

  T get hFull {
    gxHeight = MediaQuery.of(GxService.context).size.height;
    return _child;
  }

  T get hScreen {
    gxHeight = MediaQuery.of(GxService.context).size.height;
    return _child;
  }

  T get hHalf {
    gxHeight = MediaQuery.of(GxService.context).size.height / 2;
    return _child;
  }

  T get hQuarter {
    gxHeight = MediaQuery.of(GxService.context).size.height * .25;
    return _child;
  }

  T get h5 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .05;
    return _child;
  }

  T get h10 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .1;
    return _child;
  }

  T get h15 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .15;
    return _child;
  }

  T get h20 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .2;
    return _child;
  }

  T get h25 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .25;
    return _child;
  }

  T get h30 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .3;
    return _child;
  }

  T get h35 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .35;
    return _child;
  }

  T get h40 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .4;
    return _child;
  }

  T get h45 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .45;
    return _child;
  }

  T get h50 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .5;
    return _child;
  }

  T get h55 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .55;
    return _child;
  }

  T get h60 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .6;
    return _child;
  }

  T get h65 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .65;
    return _child;
  }

  T get h70 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .7;
    return _child;
  }

  T get h75 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .75;
    return _child;
  }

  T get h80 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .8;
    return _child;
  }

  T get h85 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .85;
    return _child;
  }

  T get h90 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .9;
    return _child;
  }

  T get h95 {
    gxHeight = MediaQuery.of(GxService.context).size.height * .95;
    return _child;
  }

  T get h100 {
    gxHeight = MediaQuery.of(GxService.context).size.height;
    return _child;
  }

  /// Sets the width property of the box.
  T width(double value) {
    gxWidth = value;
    return _child;
  }

  T get wFull {
    gxWidth = MediaQuery.of(GxService.context).size.width;
    return _child;
  }

  T get wScreen {
    gxWidth = MediaQuery.of(GxService.context).size.width;
    return _child;
  }

  T get wHalf {
    gxWidth = MediaQuery.of(GxService.context).size.width / 2;
    return _child;
  }

  T get wQuarter {
    gxWidth = MediaQuery.of(GxService.context).size.width * .25;
    return _child;
  }

  T get w5 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .05;
    return _child;
  }

  T get w10 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .1;
    return _child;
  }

  T get w15 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .15;
    return _child;
  }

  T get w20 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .2;
    return _child;
  }

  T get w25 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .25;
    return _child;
  }

  T get w30 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .3;
    return _child;
  }

  T get w35 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .35;
    return _child;
  }

  T get w40 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .4;
    return _child;
  }

  T get w45 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .45;
    return _child;
  }

  T get w50 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .5;
    return _child;
  }

  T get w55 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .55;
    return _child;
  }

  T get w60 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .6;
    return _child;
  }

  T get w65 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .65;
    return _child;
  }

  T get w70 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .7;
    return _child;
  }

  T get w75 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .75;
    return _child;
  }

  T get w80 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .8;
    return _child;
  }

  T get w85 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .85;
    return _child;
  }

  T get w90 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .9;
    return _child;
  }

  T get w95 {
    gxWidth = MediaQuery.of(GxService.context).size.width * .95;
    return _child;
  }

  T get w100 {
    gxWidth = MediaQuery.of(GxService.context).size.width;
    return _child;
  }
}
