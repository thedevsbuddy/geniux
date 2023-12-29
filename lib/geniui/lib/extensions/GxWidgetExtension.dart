/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxWidgetExtension` class
const String target = "geniui/lib/extensions/";

/// Get the full file path for the `GxWidgetExtension` Class
///
/// [file] This gives a boilerplate for the `GxWidgetExtension` class
const String file = "geniui/lib/extensions/GxWidgetExtension.dart";

/// Get the stub content for the `GxWidgetExtension` Class
///
/// [stub] This gives a boilerplate for the `GxWidgetExtension` class
const String stub = """
import 'package:flutter/material.dart';

/// Extension Methods for widgets
extension GxWidgetExtension on Widget {
  /// Wraps provided widgets in [Center] Widget
  ///
  Widget centered() => Center(child: this);

  /// Wraps provided widgets in [Expanded]  Widget
  Widget expanded({int flex = 1}) => Expanded(child: this, flex: flex);

  ///  Wraps provided widgets in [Flexible] Widget
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) => Flexible(child: this, flex: flex, fit: fit);

  ///  Wraps provided widgets in [Inkwell] Widget
  ///
  Widget onTap(Function()? onTap) => InkWell(onTap: onTap, child: this, splashFactory: NoSplash.splashFactory);
  Widget onDoubleTap(Function()? onDoubleTap) => InkWell(onDoubleTap: onDoubleTap, child: this, splashFactory: NoSplash.splashFactory);
  Widget onLongPress(Function()? onLongPress) => InkWell(onLongPress: onLongPress, child: this, splashFactory: NoSplash.splashFactory);
  Widget onTapDown(Function(TapDownDetails)? onTapDown) => InkWell(onTapDown: onTapDown, child: this, splashFactory: NoSplash.splashFactory);
  Widget onTapUp(Function(TapUpDetails)? onTapUp) => InkWell(onTapUp: onTapUp, child: this, splashFactory: NoSplash.splashFactory);
  Widget onTapCancel(Function()? onTapCancel) => InkWell(onTapCancel: onTapCancel, child: this, splashFactory: NoSplash.splashFactory);
  Widget onHighlightChanged(Function(bool)? onHighlightChanged) => InkWell(onHighlightChanged: onHighlightChanged, child: this, splashFactory: NoSplash.splashFactory);
}

""";
