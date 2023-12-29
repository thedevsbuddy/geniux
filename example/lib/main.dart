import 'package:example/Widgets/GxAboutSection.dart';
import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';

import 'Widgets/GxButtonExample.dart';

void main() async {
  await GxService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GxAppBuilder(
      builder: (BuildContext context, ThemeMode _themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: _themeMode,
          navigatorKey: GxService.appKey,
          theme: ThemeData(
            primaryColor: GxColors.gray.shade800,
            textTheme: TextTheme(
              displaySmall: TextStyle(
                color: GxColors.slate.shade700,
              ),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: GxColors.slate.shade800,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: GxColors.gray.shade900,
            textTheme: TextTheme(
              displaySmall: TextStyle(
                color: GxColors.white,
                fontSize: 24,
              ),
            ),
          ),
          home: ExamplePage(),
        );
      },
    );
  }
}

class ExamplePage extends StatelessWidget {
  ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Tailwind UI style for flutter".isText.render(),
        elevation: 0.0,
      ),
      backgroundColor: GxColors.scaffoldBackgroundColor(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GxPadding(
            child: GxColumn(<Widget>[
              /// GxButton Example
              GxButtonExample(),
            ]).alignStart.justifyCenter.min.render(),
          ).py4.px3.render(),
        ),
      ),
    );
  }
}
