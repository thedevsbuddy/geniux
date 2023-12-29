import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

import 'GxBuilder.dart';

/// [GxInkwell] widget is wrapper around the actual [InkWell] Widget
///

class GxInkWell extends GxWidgetBuilder<Widget> with GxGestureMixin<GxInkWell> {
  GxInkWell({this.child}) {
    setChildForGestureDetection(this);
  }

  Widget? child;
  InteractiveInkFeatureFactory? _splashFactory;
  bool _autofocus = false;
  BorderRadius? _borderRadius;
  MouseCursor? _mouseCursor;
  Color? _focusColor;
  Color? _hoverColor;
  Color? _highlightColor;
  MaterialStateProperty<Color?>? _overlayColor;
  Color? _splashColor;
  double? _radius;
  ShapeBorder? _customBorder;
  bool? _enableFeedback = true;
  bool _excludeFromSemantics = false;
  FocusNode? _focusNode;
  bool _canRequestFocus = true;

  /// Provided splash factory to [InkWell]
  GxInkWell get noSplash => this.._splashFactory = NoSplash.splashFactory;

  /// Handle Booleans
  GxInkWell autoFocus(bool autoFocus) => this.._autofocus = autoFocus;
  GxInkWell enableFeedback(bool enableFeedback) =>
      this.._enableFeedback = enableFeedback;
  GxInkWell excludeFromSemantics(bool excludeFromSemantics) =>
      this.._excludeFromSemantics = excludeFromSemantics;
  GxInkWell canRequestFocus(bool canRequestFocus) =>
      this.._canRequestFocus = canRequestFocus;

  /// Handle Colors
  GxInkWell focusColor(Color focusColor) => this.._focusColor = focusColor;
  GxInkWell hoverColor(Color hoverColor) => this.._hoverColor = hoverColor;
  GxInkWell highlightColor(Color highlightColor) =>
      this.._highlightColor = highlightColor;
  GxInkWell overlayColor(MaterialStateProperty<Color?> overlayColor) =>
      this.._overlayColor = overlayColor;
  GxInkWell splashColor(Color splashColor) => this.._splashColor = splashColor;

  /// Handle Misc Options
  GxInkWell borderRadius(BorderRadius borderRadius) =>
      this.._borderRadius = borderRadius;
  GxInkWell mouseCursor(MouseCursor mouseCursor) =>
      this.._mouseCursor = mouseCursor;
  GxInkWell customBorder(ShapeBorder customBorder) =>
      this.._customBorder = customBorder;
  GxInkWell focusNode(FocusNode focusNode) => this.._focusNode = focusNode;

  /// It Renders [InkWell] Widget
  ///
  @override
  Widget render({Key? key}) {
    return InkWell(
      child: child!,
      splashFactory: _splashFactory,
      onTap: gxOnTap,
      onDoubleTap: gxOnDoubleTap,
      onLongPress: gxOnLongPress,
      onTapDown: gxOnTapDown,
      onTapUp: gxOnTapUp,
      onFocusChange: gxOnFocusChange,
      onHighlightChanged: gxOnHighlightChanged,
      onTapCancel: gxOnTapCancel,
      onHover: gxOnHover,
      autofocus: _autofocus,
      borderRadius: _borderRadius,
      mouseCursor: _mouseCursor,
      focusColor: _focusColor,
      hoverColor: _hoverColor,
      highlightColor: _highlightColor,
      overlayColor: _overlayColor,
      splashColor: _splashColor,
      radius: _radius,
      customBorder: _customBorder,
      enableFeedback: _enableFeedback,
      excludeFromSemantics: _excludeFromSemantics,
      focusNode: _focusNode,
      canRequestFocus: _canRequestFocus,
    );
  }
}

extension InkwellExtensions on Widget {
  /// Extension method to directly access [GxInkWell]
  /// with any widget without wrapping or with dot operator.

  GxInkWell get inkWell => GxInkWell(child: this);

  GxInkWell get withInkWell => GxInkWell(child: this);

  GxInkWell get isInkWell => GxInkWell(child: this);
}
