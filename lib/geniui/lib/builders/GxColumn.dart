/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxColumn` class
const String target = "geniui/lib/widgets/";

/// Get the full file path for the `GxColumn` Class
///
/// [file] This gives a boilerplate for the `GxColumn` class
const String file = "geniui/lib/widgets/GxColumn.dart";

/// Get the stub content for the `GxColumn` Class
///
/// [stub] This gives a boilerplate for the `GxColumn` class
const String stub = """
import 'package:flutter/material.dart';

import 'GxBuilder.dart';

/// Flutter Column Builder Widget
/// to provide utilities in your Column Widget

class GxColumn extends GxWidgetBuilder<Widget> {
  GxColumn(List<Widget> this._children);
  GxColumn.existing(
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
  GxColumn get justifyCenter =>
      this.._mainAxisAlignment = MainAxisAlignment.center;
  // Main Start
  GxColumn get justifyStart =>
      this.._mainAxisAlignment = MainAxisAlignment.start;
  // Main End
  GxColumn get justifyEnd => this.._mainAxisAlignment = MainAxisAlignment.end;
  // Main between
  GxColumn get justifyBetween =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceBetween;
  // Main around
  GxColumn get justifyAround =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceAround;
  // Main Evenly
  GxColumn get justifyEvenly =>
      this.._mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  /// CrossAxisAlignment getter
  // Cross Center
  GxColumn get alignCenter =>
      this.._crossAxisAlignment = CrossAxisAlignment.center;
  // Cross Start
  GxColumn get alignStart =>
      this.._crossAxisAlignment = CrossAxisAlignment.start;
  // Cross End
  GxColumn get alignEnd => this.._crossAxisAlignment = CrossAxisAlignment.end;
  // Cross Baseline
  GxColumn get alignBetween =>
      this.._crossAxisAlignment = CrossAxisAlignment.baseline;
  // Cross Stretch
  GxColumn get alignStretch =>
      this.._crossAxisAlignment = CrossAxisAlignment.stretch;

  /// Main Axis Size
  // Main Axis Size Max
  GxColumn get max => this.._mainAxisSize = MainAxisSize.max;
  // Main Axis Size Min
  GxColumn get min => this.._mainAxisSize = MainAxisSize.min;

  /// ============== RENDER COLUMN WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Column(
      children: _children!,
      mainAxisAlignment: _mainAxisAlignment!,
      crossAxisAlignment: _crossAxisAlignment!,
      mainAxisSize: _mainAxisSize!,
    );
  }
}

extension ColumnExtensions on Column {
  GxColumn get isColumn => GxColumn.existing(children, mainAxisAlignment, crossAxisAlignment, mainAxisSize);
}
""";
