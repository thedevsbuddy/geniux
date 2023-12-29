/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxMarginMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxMarginMixin` Class
///
/// [file] This gives a boilerplate for the `GxMarginMixin` class
const String file = "geniui/lib/mixins/GxMarginMixin.dart";

/// Get the stub content for the `GxMarginMixin` Class
///
/// [stub] This gives a boilerplate for the `GxMarginMixin` class
const String stub = """
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
    _gxMargin = EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom);
    return _gxMargin!;
  }

  /// Custom All Side Margin
  T margin(dynamic val){
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  } 
  T m(dynamic val){
    marginLeft = val;
    marginTop = val;
    marginRight = val;
    marginBottom = val;
    return _child;
  } 

  
  /// Custom Horizontal Margin
  T mx(dynamic val){
    marginLeft = val;
    marginRight = val;
    return _child;
  } 

  /// Custom Vertical Margin
  T my(dynamic val){
    marginTop = val;
    marginBottom = val;
    return _child;
  } 
  
  /// Custom Left Margin
  T ml(dynamic val){
    marginLeft = val;
    return _child;
  } 

  /// Custom Top Margin
  T mt(dynamic val){
    marginTop = val;
    return _child;
  } 

  /// Custom Right Margin
  T mr(dynamic val){
    marginRight = val;
    return _child;
  } 

  /// Custom Bottom Margin
  T mb(dynamic val){
    marginBottom = val;
    return _child;
  }
  
  %marginGetters%  
}
""";
