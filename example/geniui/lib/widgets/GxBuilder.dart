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
