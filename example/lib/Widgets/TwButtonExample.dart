import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

class GxButtonExample extends StatelessWidget {
  const GxButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GxColumn(<Widget>[
      "GxButton".isText.displaySmall(context).render(),
    ]).alignStart.justifyStart.min.render();
  }
}
