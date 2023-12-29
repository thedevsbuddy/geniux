import 'package:flutter/material.dart';

import 'GxBuilder.dart';

/// Flutter Wrap Builder Widget
/// to provide utilities in your Wrap Widget

class GxWrap extends GxWidgetBuilder<Widget> {
  GxWrap(List<Widget> this._children);
  GxWrap.existing(
    List<Widget> this._children,
    Axis this._direction,
    WrapAlignment this._alignment,
    WrapCrossAlignment this._crossAxisAlignment,
    Clip this._clipBehavior,
  );

  List<Widget>? _children;
  Axis? _direction = Axis.horizontal;
  Clip? _clipBehavior = Clip.none;
  WrapAlignment? _alignment = WrapAlignment.start;
  WrapCrossAlignment? _crossAxisAlignment = WrapCrossAlignment.center;

  /// WrapAlignment getter
  GxWrap get justifyCenter => this.._alignment = WrapAlignment.center;
  GxWrap get justifyStart => this.._alignment = WrapAlignment.start;
  GxWrap get justifyEnd => this.._alignment = WrapAlignment.end;
  GxWrap get justifyBetween => this.._alignment = WrapAlignment.spaceBetween;
  GxWrap get justifyAround => this.._alignment = WrapAlignment.spaceAround;
  GxWrap get justifyEvenly => this.._alignment = WrapAlignment.spaceEvenly;

  /// WrapCrossAlignment getter
  GxWrap get alignCenter =>
      this.._crossAxisAlignment = WrapCrossAlignment.center;
  GxWrap get alignStart => this.._crossAxisAlignment = WrapCrossAlignment.start;
  GxWrap get alignEnd => this.._crossAxisAlignment = WrapCrossAlignment.end;

  /// Direction
  GxWrap get horizontal => this.._direction = Axis.horizontal;
  GxWrap get vertical => this.._direction = Axis.vertical;

  /// Clip Behavior
  GxWrap get clipNone => this.._clipBehavior = Clip.none;
  GxWrap get clipAntiAlias => this.._clipBehavior = Clip.antiAlias;
  GxWrap get clipHardEdge => this.._clipBehavior = Clip.hardEdge;
  GxWrap get clipAntiAliasWithSaveLayer =>
      this.._clipBehavior = Clip.antiAliasWithSaveLayer;

  /// ============== RENDER WRAP WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Wrap(
      children: _children!,
      direction: _direction!,
      alignment: _alignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      clipBehavior: _clipBehavior!,
    );
  }
}

extension WrapExtensions on Wrap {
  GxWrap get isWrap => GxWrap.existing(
      children, direction, alignment, crossAxisAlignment, clipBehavior);
}
