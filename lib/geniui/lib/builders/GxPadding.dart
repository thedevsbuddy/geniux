/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxPadding` class
const String target = "geniui/lib/widgets/";

/// Get the full file path for the `GxPadding` Class
///
/// [file] This gives a boilerplate for the `GxPadding` class
const String file = "geniui/lib/widgets/GxPadding.dart";

/// Get the stub content for the `GxPadding` Class
///
/// [stub] This gives a boilerplate for the `GxPadding` class
const String stub = """
import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

import 'GxBuilder.dart';

class GxPadding extends GxWidgetBuilder<Widget> with GxPaddingMixin<GxPadding> {
  GxPadding({this.child}) {
    setChildForPadding(this);
  }
  GxPadding.existing(Widget this.child) {
    setChildForPadding(this);
  }

  final Widget? child;

  @override
  Widget render({Key? key}) {
    return Padding(
      key: key,
      child: child,
      padding: gxPadding,
    );
  }
}

extension PaddingWidgetExtension on Padding {
  GxPadding get isPadding => GxPadding.existing(child!);
}

extension PaddingOnWidgetExtension on Widget {
  GxPadding get hasPadding => GxPadding.existing(this);
}

""";
