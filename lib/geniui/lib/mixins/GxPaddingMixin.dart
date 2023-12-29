/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxPaddingMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxPaddingMixin` Class
///
/// [file] This gives a boilerplate for the `GxPaddingMixin` class
const String file = "geniui/lib/mixins/GxPaddingMixin.dart";

/// Get the stub content for the `GxPaddingMixin` Class
///
/// [stub] This gives a boilerplate for the `GxPaddingMixin` class
const String stub = """
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
    _gxPadding = EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom);
    return _gxPadding!;
  }
    
  // Custom All Side Padding
  T padding(dynamic val){
    paddingLeft = val;
    paddingTop = val;
    paddingRight = val;
    paddingBottom = val;
    return _child;
  }

  T p(dynamic val){
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
  T py(dynamic val){
    paddingTop = val;
   paddingBottom = val;
    return _child;
  } 
   
  /// Custom Left Padding
  T pl(dynamic val){
   paddingLeft = val;
    return _child;
  } 
 
  /// Custom Top Padding
  T pt(dynamic val){
    paddingTop = val;
  return _child;
  } 
  
  /// Custom Right Padding
  T pr(dynamic val){
    paddingRight = val;
    return _child;
  } 


   /// Custom Bottom Padding
  T pb(dynamic val){
    paddingBottom = val;
    return _child;
  }
  
  %paddingGetters%
}
""";
