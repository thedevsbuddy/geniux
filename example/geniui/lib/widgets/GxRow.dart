import 'package:flutter/material.dart';

import 'GxBuilder.dart';

/// Flutter Row Builder Widget
/// to provide utilities in your Row Widget

class GxRow extends GxWidgetBuilder<Widget> {
  GxRow(List<Widget> this._children);
  GxRow.existing(
    List<Widget> this._children,
    MainAxisAlignment this._mainAxisAlignment,
    CrossAxisAlignment this._crossAxisAlignment,
    MainAxisSize this._mainAxisSize,
  );

  List<Widget>? _children;
  MainAxisAlignment? _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment? _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize? _mainAxisSize = MainAxisSize.max;

  /// MainAxisAlignment getter
  // Main Center
  GxRow get justifyCenter =>
      this.._mainAxisAlignment = MainAxisAlignment.center;
  // Main Start
  GxRow get justifyStart => this.._mainAxisAlignment = MainAxisAlignment.start;
  // Main End
  GxRow get justifyEnd => this.._mainAxisAlignment = MainAxisAlignment.end;
  // Main between
  GxRow get justifyBetween =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceBetween;
  // Main around
  GxRow get justifyAround =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceAround;
  // Main Evenly
  GxRow get justifyEvenly =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  /// CrossAxisAlignment getter
  // Cross Center
  GxRow get alignCenter =>
      this.._crossAxisAlignment = CrossAxisAlignment.center;
  // Cross Start
  GxRow get alignStart => this.._crossAxisAlignment = CrossAxisAlignment.start;
  // Cross End
  GxRow get alignEnd => this.._crossAxisAlignment = CrossAxisAlignment.end;
  // Cross Baseline
  GxRow get alignBetween =>
      this.._crossAxisAlignment = CrossAxisAlignment.baseline;
  // Cross Stretch
  GxRow get alignStretch =>
      this.._crossAxisAlignment = CrossAxisAlignment.stretch;

  /// Main Axis Size
  // Main Axis Size Max
  GxRow get max => this.._mainAxisSize = MainAxisSize.max;
  // Main Axis Size Min
  GxRow get min => this.._mainAxisSize = MainAxisSize.min;

  /// ============== RENDER ROW WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Row(
      children: _children!,
      mainAxisAlignment: _mainAxisAlignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      mainAxisSize: _mainAxisSize!,
    );
  }
}

extension RowExtensions on Row {
  GxRow get isRow => GxRow.existing(
      children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);
}
