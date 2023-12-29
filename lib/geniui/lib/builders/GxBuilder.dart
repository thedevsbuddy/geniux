/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxBuilder` class
const String target = "geniui/lib/widgets/";

/// Get the full file path for the `GxBuilder` Class
///
/// [file] This gives a boilerplate for the `GxBuilder` class
const String file = "geniui/lib/widgets/GxBuilder.dart";

/// Get the stub content for the `GxBuilder` Class
///
/// [stub] This gives a boilerplate for the `GxBuilder` class
const String stub = """
import 'package:flutter/material.dart';

/// Being used internally by GxWidgetBuilders for eg [GxTextBuilder]
abstract class GxWidgetBuilder<T extends Widget> {
  T render({Key? key});
}

abstract class GxWidgetContextBuilder<T extends Widget> {
  T render(BuildContext context, {Key? key});
}

abstract class GxTextSpanBuilder<TextSpan> {
  TextSpan render({Key? key});
}
""";
