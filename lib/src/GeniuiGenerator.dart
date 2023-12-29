import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/geniui.dart' as geniuiGx;
import 'package:geniux/geniui/pubspec.dart' as pubspecGx;

Future<void> generate(List<String> args) async {
  await generateGeniui();
  await generatePubspec();
}

Future<void> generateGeniui() async {
  /// Check and create
  Utils.makeDir(geniuiGx.target);

  /// Write File
  Utils.writeFile(geniuiGx.file, geniuiGx.stub);

  /// Show Success message
  print(green("Geniui file generated successfully!"));
}

Future<void> generatePubspec() async {
  /// Check and create
  Utils.makeDir(pubspecGx.target);

  /// Write File
  Utils.writeFile(pubspecGx.file, pubspecGx.stub);

  /// Show Success message
  print(green("Pubspec YAML file generated successfully!"));
}
