import 'package:example/Widgets/TwAboutSection.dart';
import 'package:flutter/material.dart';
import 'package:tailwind/tailwind.dart';

import 'Widgets/TwButtonExample.dart';

void main() async {
  await TwService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TwAppBuilder(
      builder: (BuildContext context, ThemeMode _themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: _themeMode,
          navigatorKey: TwService.appKey,
          theme: ThemeData(
            primaryColor: TwColors.gray,
            appBarTheme: AppBarTheme(
              backgroundColor: TwColors.blueGray.shade800,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
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
      ),
      backgroundColor: TwColors.scaffoldBackgroundColor(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: TwPadding(
            child: TwColumn(<Widget>[
              TwAbountSection(),
              TwImage('https://picsum.photos/500').wFull.render(),

              /// TwButton Example
              TwButtonExample(),
            ]).alignStart.justifyCenter.min.render(),
          ).py4.px3.render(),
        ),
      ),
    );
  }
}
