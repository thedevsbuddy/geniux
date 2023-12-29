/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxStack` class
const String target = "geniui/lib/widgets/";

/// Get the full file path for the `GxStack` Class
///
/// [file] This gives a boilerplate for the `GxStack` class
const String file = "geniui/lib/widgets/GxStack.dart";

/// Get the stub content for the `GxStack` Class
///
/// [stub] This gives a boilerplate for the `GxStack` class
const String stub = """
import 'package:flutter/material.dart';
import 'GxBuilder.dart';

/// Flutter Stack Builder Widget
/// to provide utilities in your Stack Widget

class GxStack extends GxWidgetBuilder<Widget> {
  GxStack(this._children);

  GxStack.existing(
    this._children,
    this._alignment,
    this._clipBehavior,
    this._textDirection,
    this._stackFit,
  );

  List<Widget> _children;
  Clip _clipBehavior = Clip.none;
  AlignmentGeometry _alignment = AlignmentDirectional.topStart;
  TextDirection? _textDirection;
  StackFit _stackFit = StackFit.loose;

  /// AlignmentDirectional getter
  GxStack get alignTopStart => this.._alignment = AlignmentDirectional.topStart;
  GxStack get alignTopCenter => this.._alignment = AlignmentDirectional.topCenter;
  GxStack get alignTopEnd => this.._alignment = AlignmentDirectional.topEnd;
  GxStack get alignCenterStart => this.._alignment = AlignmentDirectional.centerStart;
  GxStack get alignCenter => this.._alignment = AlignmentDirectional.center;
  GxStack get alignCenterEnd => this.._alignment = AlignmentDirectional.centerEnd;
  GxStack get alignBottomStart => this.._alignment = AlignmentDirectional.bottomStart;
  GxStack get alignBottomCenter => this.._alignment = AlignmentDirectional.bottomCenter;
  GxStack get alignBottomEnd => this.._alignment = AlignmentDirectional.bottomEnd;

  /// StackFit
  GxStack get fitExpand => this.._stackFit = StackFit.expand;
  GxStack get fitLoose => this.._stackFit = StackFit.loose;
  GxStack get fitPassthrough => this.._stackFit = StackFit.passthrough;

  /// Clip Behavior
  GxStack get clipNone => this.._clipBehavior = Clip.none;
  GxStack get clipAntiAlias => this.._clipBehavior = Clip.antiAlias;
  GxStack get clipHardEdge => this.._clipBehavior = Clip.hardEdge;
  GxStack get clipAntiAliasWithSaveLayer => this.._clipBehavior = Clip.antiAliasWithSaveLayer;

  /// ============== RENDER STACK WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    return Stack(
      key: key,
      children: _children,
      alignment: _alignment,
      clipBehavior: _clipBehavior,
      fit: _stackFit,
      textDirection: _textDirection,
    );
  }
}

extension StackExtensions on Stack {
  GxStack get isStack => GxStack.existing(children, alignment, clipBehavior, textDirection!, fit);
}

""";
