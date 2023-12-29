import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/utilities/GxColors.dart'
    as utilityGxColors;
import 'package:geniux/geniui/lib/utilities/GxSizes.dart'
    as utilityGxSizes;
import 'package:geniux/geniui/lib/utilities/GxUtils.dart'
    as utilityGxUtils;
import 'package:geniux/geniui/lib/utilities/GxService.dart'
    as utilityGxService;

Future<void> generate(List<String> args) async {
  await generateGxServiceUtility();
  await generateGxColorsUtility();
  await generateGxUtilsUtility();
  await generateGxSpacersUtility();
}

Future<void> generateGxServiceUtility() async {
  /// Get Gx Utility stub Template / File
  var utilityGxFile = utilityGxService.stub;

  /// Check and create
  Utils.makeDir(utilityGxService.target);

  /// Write File
  Utils.writeFile(utilityGxService.file, utilityGxFile);

  /// Show Success message
  print(green("GxService Generated successfully!"));
}

Future<void> generateGxUtilsUtility() async {
  /// Get Gx Utility stub Template / File
  var utilityGxFile = utilityGxUtils.stub;

  /// Process stub Template / File
  utilityGxFile = processStub(stub: utilityGxFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityGxUtils.target);

  /// Write File
  Utils.writeFile(utilityGxUtils.file, utilityGxFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

Future<void> generateGxColorsUtility() async {
  /// Get Gx Utility stub Template / File
  var colorsUtilityGxFile = utilityGxColors.stub;

  /// Process stub Template / File
  colorsUtilityGxFile =
      processStub(stub: colorsUtilityGxFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityGxColors.target);

  /// Write File
  Utils.writeFile(utilityGxColors.file, colorsUtilityGxFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

Future<void> generateGxSpacersUtility() async {
  /// Get Gx Utility stub Template / File
  var spacerUtilityGxFile = utilityGxSizes.stub;

  /// Process stub Template / File
  spacerUtilityGxFile =
      processStub(stub: spacerUtilityGxFile, data: Utils.configs);

  /// Check and create
  Utils.makeDir(utilityGxSizes.target);

  /// Write File
  Utils.writeFile(utilityGxSizes.file, spacerUtilityGxFile);

  /// Show Success message
  print(green("Utilities Generated successfully!"));
}

String processStub({required String stub, dynamic data}) {
  stub = stub.replaceAll("//spacers", processSpacers(data.spacers));
  stub = stub.replaceAll("//colors", processColors(data.colors));
  stub = stub.replaceAll("//fontSizes", processFontSizes(data.fontSizes));

  return stub;
}

String processSpacers(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spaces = "";
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spaces += """/// Returns [spacer] where spacer is base size
  ///
  /// ```dart
  /// double spacer = $value;
  /// returns spacer;
  /// ```
  ///\n\t""";
      spaces += "static const double spacer = $value;\n\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', '_');
      spaces += """/// Returns [spacer * $value] where spacer is base size
  ///
  /// ```dart
  /// double spacer = ${spacers['DEFAULT']};
  /// returns 16 * $value = ${16 * num.parse(value)};
  /// ```
  ///\n\t""";
      spaces += "static const double spacer$dot = spacer * $value;\n\n\t";
    } else {
      spaces += """/// Returns [spacer * $value] where spacer is base size
  ///
  /// ```dart
  /// double spacer = ${spacers['DEFAULT']};
  /// returns 16 * $value = ${16 * num.parse(value)};
  /// ```
  ///\n\t""";
      spaces += "static const double spacer$key = spacer * $value;\n\n\t";
    }
  });

  return spaces;
}

String processColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      color += "static const MaterialColor $key = MaterialColor(";
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += "$val, <int, Color>{\n\t\t";
        } else {
          val = Utils.hexToColor("$val");
          color += "$k: Color($val),\n\t\t";
        }
      });
      color += "});\n\n";
    } else {
      value = Utils.hexToColor("$value");
      color += "static const Color $key = Color($value);\n\t";
    }
  });
  return color;
}

String processFontSizes(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += "static const double textBase = $value;\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize +=
          "static const double text${dot[0].toUpperCase()}${dot.substring(1)}  = textBase * $value;\n\t";
    } else {
      fontSize +=
          "static const double text${key[0].toUpperCase()}${key.substring(1)} = textBase * $value;\n\t";
    }
  });
  return fontSize;
}

String processFontSizeUtilities(Map<String, dynamic>? fontSizes) {
  if (fontSizes == null) {
    return "";
  }
  var fontSize = "";
  fontSizes.forEach((key, value) {
    if (key == 'base') {
      fontSize += "static const double textBase = $value;\n\t";
    } else if (key.contains('.')) {
      var dot = key.replaceAll('.', 'Dot');
      fontSize +=
          "static const double text${dot[0].toUpperCase()}${dot.substring(1)}  = textBase * $value;\n\t";
    } else {
      fontSize +=
          "static const double text${key[0].toUpperCase()}${key.substring(1)} = textBase * $value;\n\t";
    }
    // if (key == 'DEFAULT') {
    //   spaces += "static const double spacer = $value;\n\t";
    // } else if (key.contains('.')) {
    //   var dot = key.replaceAll('.', '_');
    //   spaces += "static const double spacer$dot = spacer * $value;\n\t";
    // } else {
    //   spaces += "static const double spacer$key = spacer * $value;\n\t";
    // }
  });

  return fontSize;
}
