import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/extensions/GxColorExtension.dart'
    as gxColorExtension;
import 'package:geniux/geniui/lib/extensions/GxContextExtension.dart'
    as gxContextExtension;
import 'package:geniux/geniui/lib/extensions/GxNumbersExtension.dart'
    as gxNumbersExtension;
import 'package:geniux/geniui/lib/extensions/GxWidgetExtension.dart'
    as gxWidgetExtension;

Future<void> generate(List<String> args) async {
  await generateGxColorExtension();
  await generateGxNumbersExtension();
  await generateGxWidgetExtension();
  await generateGxContextExtension();
}

/// Generate [GxStringExtension]
Future<void> generateGxColorExtension() async {
  /// Get Gx Utility stub Template / File
  var gxColorExtensionData = gxColorExtension.stub;

  /// Process stub Template / File
  gxColorExtensionData = gxColorExtensionData.replaceAll(
      "//opacity", processOpacity(Utils.configs.opacity));

  /// Check and create
  Utils.makeDir(gxColorExtension.target);

  /// Write File
  Utils.writeFile(gxColorExtension.file, gxColorExtensionData);

  /// Show Success message
  print(green("GxColor Extension generated successfully!"));
}

String processOpacity(Map<String, dynamic>? opacity) {
  if (opacity == null) {
    return "";
  }
  var op = "";
  opacity.forEach((key, value) {
    if (value != '' || key != '') {
      op += "Color get o$key => this.withOpacity($value);\n\t";
      op += "Color get opacity$key => this.withOpacity($value);\n\t\n\t";
    }
  });
  return op;
}

/// Generate [GxWidgetExtension]
Future<void> generateGxWidgetExtension() async {
  /// Check and create
  Utils.makeDir(gxWidgetExtension.target);

  /// Write File
  Utils.writeFile(gxWidgetExtension.file, gxWidgetExtension.stub);

  /// Show Success message
  print(green("GxWidget Extension generated successfully!"));
}

/// Generate [GxNumbersExtension]
Future<void> generateGxNumbersExtension() async {
  /// Check and create
  Utils.makeDir(gxNumbersExtension.target);

  /// Write File
  Utils.writeFile(gxNumbersExtension.file, gxNumbersExtension.stub);

  /// Show Success message
  print(green("GxWidget Extension generated successfully!"));
}

/// Generate [GxNumbersExtension]
Future<void> generateGxContextExtension() async {
  /// Check and create
  Utils.makeDir(gxContextExtension.target);

  /// Write File
  Utils.writeFile(gxContextExtension.file, gxContextExtension.stub);

  /// Show Success message
  print(green("GxContext Extension generated successfully!"));
}
