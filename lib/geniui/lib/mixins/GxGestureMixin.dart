/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxGestureMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxGestureMixin` Class
///
/// [file] This gives a boilerplate for the `GxGestureMixin` class
const String file = "geniui/lib/mixins/GxGestureMixin.dart";

/// Get the stub content for the `GxGestureMixin` Class
///
/// [stub] This gives a boilerplate for the `GxGestureMixin` class
const String stub = """
import 'package:flutter/material.dart';

mixin GxGestureMixin<T> {
  late T _child;

  
  void setChildForGestureDetection(T child) {
    _child = child;
  }

  
  Function()? gxOnTap;

  
  Function()? gxOnDoubleTap;

  
  Function()? gxOnLongPress;

  
  Function(TapDownDetails)? gxOnTapDown;

  
  Function(TapUpDetails)? gxOnTapUp;

  
  Function(bool)? gxOnFocusChange;

  
  Function(bool)? gxOnHighlightChanged;

  
  Function()? gxOnTapCancel;

  
  Function(bool)? gxOnHover;

  /// Handle Methods
  T onTap(Function()? onTap) {
    gxOnTap = onTap;
    return _child;
  }

  T onDoubleTap(Function()? onDoubleTap) {
    gxOnDoubleTap = onDoubleTap;
    return _child;
  }

  T onLongPress(Function()? onLongPress) {
    gxOnLongPress = onLongPress;
    return _child;
  }

  T onTapDown(Function(TapDownDetails)? onTapDown) {
    gxOnTapDown = onTapDown;
    return _child;
  }

  T onTapUp(Function(TapUpDetails)? onTapUp) {
    gxOnTapUp = onTapUp;
    return _child;
  }

  T onTapCancel(Function()? onTapCancel) {
    gxOnTapCancel = onTapCancel;
    return _child;
  }

  T onHighlightChanged(Function(bool)? onHighlightChanged) {
    gxOnHighlightChanged = onHighlightChanged;
    return _child;
  }

  T onHover(Function(bool)? onHover) {
    gxOnHover = onHover;
    return _child;
  }

  T onFocusChange(Function(bool)? onFocusChange) {
    gxOnFocusChange = onFocusChange;
    return _child;
  }
}

""";
