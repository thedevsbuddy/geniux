import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

class GxAboutSection extends StatelessWidget {
  const GxAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GxContainer(
      child: GxColumn(<Widget>[
        "GeniUX is a toolkit to generate Tailwind CSS like styling for your flutter app development to make sure you build beautifull UI and ship your apps sooner."
            .isText
            .slate600
            .onDarkSlate100
            .render()
            .isContainer
            .mb4
            .render(),
        GxButton(child: "I am a Button".isText.render())
            .withConstraints(BoxConstraints(maxWidth: 120))
            .primaryColor(context)
            .onTap(() => print("Button Clicked."))
            .render(),
      ]).render(),
    ).render();
  }
}
