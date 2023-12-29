import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/builders/GxBuilder.dart' as gxBuilder;
import 'package:geniux/geniui/lib/builders/GxAppBuilder.dart'
    as gxAppBuilder;

Future<void> generate(_) async {
  await generateGxBuilder();
  await generateGxAppBuilder();
}

/// Generate [GxBuilder]
Future<void> generateGxBuilder() async {
  /// Check and create
  Utils.makeDir(gxBuilder.target);

  /// Write File
  Utils.writeFile(gxBuilder.file, gxBuilder.stub);

  /// Show Success message
  print(green("Geniui builder generated successfully!"));
}

/// Generate [GxAppBuilder]
Future<void> generateGxAppBuilder() async {
  /// Check and create
  Utils.makeDir(gxAppBuilder.target);

  /// Write File
  Utils.writeFile(gxAppBuilder.file, gxAppBuilder.stub);

  /// Show Success message
  print(green("GxAppBuilder generated successfully!"));
}
