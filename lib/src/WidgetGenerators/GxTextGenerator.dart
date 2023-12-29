import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/builders/GxText.dart' as gxText;

Future<void> generate(_) async {
  await generateGxText();
}

/// Generate [GxText]
Future<void> generateGxText() async {
  /// Get Gx Utility stub Template / File
  var gxTextFileData = gxText.stub;

  /// Process stub Template / File
  gxTextFileData = gxTextFileData.replaceAll(
      "%fontSizes%", processFontSizes(Utils.configs.fontSizes));

  /// Check and create
  Utils.makeDir(gxText.target);

  /// Write File
  Utils.writeFile(gxText.file, gxTextFileData);

  /// Show Success message
  print(green("GxText Generated successfully!"));
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize +=
          """GxText get textBase => this.._fontSize = GxSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize +=
          """GxText get text${dot[0].toUpperCase()}${dot.substring(1)} => this.._fontSize = GxSizes.text${dot[0].toUpperCase()}${dot.substring(1)};\n\t""";
    } else {
      fontSize +=
          """GxText get text${key[0].toUpperCase()}${key.substring(1)} => this.._fontSize = GxSizes.text${key[0].toUpperCase()}${key.substring(1)};\n\t""";
    }
  });

  return fontSize;
}
