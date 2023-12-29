import 'dart:convert';
import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui.config.dart' as defaultConfig;
import 'package:geniux/geniui/lib/mixins/GxAlignmentMixin.dart'
    as gxAlignmentMixin;
import 'package:geniux/geniui/lib/mixins/GxBorderMixin.dart'
    as gxBorderMixin;
import 'package:geniux/geniui/lib/mixins/GxColorMixin.dart'
    as gxColorMixin;
import 'package:geniux/geniui/lib/mixins/GxGradientMixin.dart'
    as gxGradientMixin;
import 'package:geniux/geniui/lib/mixins/GxMarginMixin.dart'
    as gxMarginMixin;
import 'package:geniux/geniui/lib/mixins/GxPaddingMixin.dart'
    as gxPaddingMixin;
import 'package:geniux/geniui/lib/mixins/GxRoundnessMixin.dart'
    as gxRoundnessMixin;
import 'package:geniux/geniui/lib/mixins/GxShadowMixin.dart'
    as gxShadowMixin;
import 'package:geniux/geniui/lib/mixins/GxGestureMixin.dart'
    as gxGestureMixin;
import 'package:geniux/geniui/lib/mixins/GxSizeMixin.dart'
    as gxSizeMixin;

Future<void> generate(List<String> args) async {
  await generateColorMixin();
  await generateSpacingMixin();
  await generateAlignmentMixin();
  await generateRoundnessMixin();
  await generateShadowMixin();
  await generateGradientMixin();
  await generateBorderMixin();
  await generateGestureMixin();
  await generateSizeMixin();
}

/// Generate Color Mixin
Future<void> generateColorMixin() async {
  /// Get default config file
  final configFile = File("geniui.config.json").readAsStringSync();

  /// Decode / Convert default config to map
  final dynamic userConfigs = jsonDecode(configFile);

  /// Initialize base config map
  Map<String, Map<String, dynamic>> configs = {"colors": {}};

  /// Add default config colors in base config
  configs['colors']!.addAll(defaultConfig.colors);

  /// Check and user overrides to colors
  if (userConfigs.containsKey('colors')) {
    configs['colors']!.addAll(userConfigs['colors']);
  }

  /// Get Gx Utility stub Template / File
  var gxColorMixinFileData = gxColorMixin.stub;

  /// Process stub Template / File
  gxColorMixinFileData = gxColorMixinFileData.replaceAll(
      "%colorGetters%", processColors(configs['colors']));

  /// Check and create
  Utils.makeDir(gxColorMixin.target);

  /// Write File
  Utils.writeFile(gxColorMixin.file, gxColorMixinFileData);

  /// Show Success message
  print(green("Color Mixin Generated successfully!"));
}

/// Processes colors
String processColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += """T get $key {
      if(!_needsDarkVariant) gxColor = GxColors.$key;
      return _child;
  }\n\t""";
        } else {
          val = Utils.hexToColor("$val");
          color += """T get $key$k {
      if(!_needsDarkVariant) gxColor = GxColors.$key.shade$k;
      return _child;
  }\n\t""";
        }
      });

      /// Generates Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            val = Utils.hexToColor("$val");
            color += """T get onDark${Utils.ucFirst(key, preserveAfter: true)} {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
         gxColor = GxColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            val = Utils.hexToColor("$val");
            color +=
                """T get onDark${Utils.ucFirst(key, preserveAfter: true)}$k {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        gxColor = GxColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else if (value is String) {
      value = Utils.hexToColor("$value");
      color += """T get $key {
      if(!_needsDarkVariant) gxColor = GxColors.$key;
      return _child;
  }\n\t""";

      if (Utils.configs.darkMode!) {
        color += """T get onDark${Utils.ucFirst(key, preserveAfter: true)} {
      if(_brightness == Brightness.dark){
        _needsDarkVariant = true;
        gxColor = GxColors.$key;
      }
      return _child;
  }\n\t""";
      }
    } else {
      throw new Exception(
          'Invalid value for colors["$key"] in "geniui.config.json" file');
    }
  });
  return color;
}

/// Generate Padding & Margin Mixin
Future<void> generateSpacingMixin() async {
  /// Get Gx Utility stub Template / File
  var gxPaddingMixinFileData = gxPaddingMixin.stub;
  var gxMarginMixinFileData = gxMarginMixin.stub;

  /// Process stub Template / File
  gxPaddingMixinFileData = gxPaddingMixinFileData.replaceAll(
      "%paddingGetters%", processPaddings(Utils.configs.spacers));
  gxMarginMixinFileData = gxMarginMixinFileData.replaceAll(
      "%marginGetters%", processMargins(Utils.configs.spacers));

  /// Check and create
  Utils.makeDir(gxPaddingMixin.target);
  Utils.makeDir(gxMarginMixin.target);

  /// Write File
  Utils.writeFile(gxPaddingMixin.file, gxPaddingMixinFileData);
  Utils.writeFile(gxMarginMixin.file, gxMarginMixinFileData);

  /// Show Success message
  print(green("Padding Mixin Generated successfully!"));
  print(green("Margin Mixin Generated successfully!"));
}

/// Processes Paddings
String processPaddings(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";
  spacer += "/// All Side Padding\n\t";

  /// Process All Side Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get p$key {
    paddingLeft = GxSizes.spacer$key;
    paddingTop = GxSizes.spacer$key;
    paddingRight = GxSizes.spacer$key;
    paddingBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Padding\n\t";

  /// Process Horizontal Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get px$key {
    paddingLeft = GxSizes.spacer$key;
    paddingRight = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Padding\n\t";

  /// Process Vertical Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get py$key {
    paddingTop = GxSizes.spacer$key;
    paddingBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Padding\n\t";

  /// Process Left Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pl$key {
    paddingLeft = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Top Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pt$key {
    paddingTop = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Padding\n\t";

  /// Process Right Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pr$key {
    paddingRight = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get pb$key {
    paddingBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  return spacer;
}

/// Processes Margins
String processMargins(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";
  spacer += "/// All Side Margin\n\t";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get m$key {
    marginLeft = GxSizes.spacer$key;
    marginTop = GxSizes.spacer$key;
    marginRight = GxSizes.spacer$key;
    marginBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Horizontal Margin\n\t";

  /// Process Horizontal Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mx$key {
    marginLeft = GxSizes.spacer$key;
    marginRight = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Vertical Margin\n\t";

  /// Process Vertical Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get my$key {
    marginTop = GxSizes.spacer$key;
    marginBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Left Margin\n\t";

  /// Process Left Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get ml$key {
    marginLeft = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Top Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mt$key {
    marginTop = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Right Margin\n\t";

  /// Process Right Margin
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mr$key {
    marginRight = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  spacer += "/// Bottom Padding\n\t";

  /// Process Bottom Padding
  spacers.forEach((key, value) {
    if (key != 'DEFAULT') {
      spacer += """T get mb$key {
    marginBottom = GxSizes.spacer$key;
    return _child;
  }\n\t""";
    }
  });

  return spacer;
}

/// Generate Alignment Mixin
Future<void> generateAlignmentMixin() async {
  /// Check and create
  Utils.makeDir(gxAlignmentMixin.target);

  /// Write File
  Utils.writeFile(gxAlignmentMixin.file, gxAlignmentMixin.stub);

  /// Show Success message
  print(green("Alignment Mixin generated successfully!"));
}

/// Generate Roundness Mixin
Future<void> generateRoundnessMixin() async {
  /// Check and create
  Utils.makeDir(gxRoundnessMixin.target);

  /// Write File
  Utils.writeFile(gxRoundnessMixin.file, gxRoundnessMixin.stub);

  /// Show Success message
  print(green("Roundness Mixin generated successfully!"));
}

/// Generate Roundness Mixin
Future<void> generateShadowMixin() async {
  /// Check and create
  Utils.makeDir(gxShadowMixin.target);

  /// Write File
  Utils.writeFile(gxShadowMixin.file, gxShadowMixin.stub);

  /// Show Success message
  print(green("Shadow Mixin generated successfully!"));
}

/// Generate Gradient Mixin
Future<void> generateGradientMixin() async {
  /// Get Gx Utility stub Template / File
  var gxGradientMixinFileData = gxGradientMixin.stub;

  /// Process stub Template / File
  gxGradientMixinFileData = gxGradientMixinFileData.replaceAll(
      "%gradientColors%", processGradientColors(Utils.configs.colors));

  /// Check and create directory
  Utils.makeDir(gxGradientMixin.target);

  /// Write File
  Utils.writeFile(gxGradientMixin.file, gxGradientMixinFileData);

  /// Show Success message
  print(green("Gradient Mixin Generated successfully!"));
}

/// Processes colors
String processGradientColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[0] = GxColors.$key;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[1] = GxColors.$key;
      return _child;
  }\n\t""";
        } else {
          color += """T get from${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (!_needsDarkVariant) gradientColors[0] = GxColors.$key.shade$k;
      return _child;
  }\n\t""";
          color += """T get to${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (!_needsDarkVariant) gradientColors[1] = GxColors.$key.shade$k;
      return _child;
  }\n\t""";
        }
      });

      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            color +=
                """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = GxColors.$key;
      }
      return _child;
  }\n\t""";
            color +=
                """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = GxColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            color +=
                """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = GxColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
            color +=
                """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)}$k {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = GxColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else {
      color += """T get from${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[0] = GxColors.$key;
      return _child;
  }\n\t""";
      color += """T get to${Utils.ucFirst(key, preserveAfter: true)} {
      if (!_needsDarkVariant) gradientColors[1] = GxColors.$key;
      return _child;
  }\n\t""";

      if (Utils.configs.darkMode!) {
        color += """T get onDarkFrom${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[0] = GxColors.$key;
      }
      return _child;
  }\n\t""";
        color += """T get onDarkTo${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gradientColors[1] = GxColors.$key;
      }
      return _child;
  }\n\t""";
      }
    }
  });
  return color;
}

/// Generate Border Mixin
Future<void> generateBorderMixin() async {
  /// Get Gx Utility stub Template / File
  var gxBorderMixinFileData = gxBorderMixin.stub;

  /// Process stub Template / File
  gxBorderMixinFileData = gxBorderMixinFileData.replaceAll(
      "%colors%", processBorderColors(Utils.configs.colors));
  gxBorderMixinFileData = gxBorderMixinFileData.replaceAll(
      "%sizes%", processBorderWidths(Utils.configs.spacers));

  /// Check and create
  Utils.makeDir(gxBorderMixin.target);

  /// Write File
  Utils.writeFile(gxBorderMixin.file, gxBorderMixinFileData);

  /// Show Success message
  print(green("Padding Mixin Generated successfully!"));
}

/// Processes borderColors
String processBorderColors(Map<String, dynamic>? colors) {
  if (colors == null) {
    return "";
  }
  var color = "";
  colors.forEach((key, value) {
    if (value is Map) {
      value.forEach((k, val) {
        if (k == "DEFAULT") {
          val = Utils.hexToColor("$val");
          color += """T get border${Utils.ucFirst(key, preserveAfter: true)} {
      if(!_needsDarkVariant) gxBorderColor = GxColors.$key;
      return _child;
  }\n\t""";
        } else {
          val = Utils.hexToColor("$val");
          color += """T get border${Utils.ucFirst(key, preserveAfter: true)}$k {
      if(!_needsDarkVariant) gxBorderColor = GxColors.$key.shade$k;
      return _child;
  }\n\t""";
        }
      });

      /// Dark Variants
      if (Utils.configs.darkMode!) {
        value.forEach((k, val) {
          if (k == "DEFAULT") {
            val = Utils.hexToColor("$val");
            color +=
                """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gxBorderColor = GxColors.$key;
      }
      return _child;
  }\n\t""";
          } else {
            val = Utils.hexToColor("$val");
            color +=
                """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)}$k {
       if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gxBorderColor = GxColors.$key.shade$k;
      }
      return _child;
  }\n\t""";
          }
        });
      }
    } else if (value is String) {
      value = Utils.hexToColor("$value");
      color += """T get border${Utils.ucFirst(key, preserveAfter: true)} {
      if(!_needsDarkVariant) gxBorderColor = GxColors.$key;
      return _child;
  }\n\t""";

      /// Dark variants
      if (Utils.configs.darkMode!) {
        value = Utils.hexToColor("$value");
        color +=
            """T get onDarkBorder${Utils.ucFirst(key, preserveAfter: true)} {
      if (_brightness == Brightness.dark) {
        _needsDarkVariant = true;
        gxBorderColor = GxColors.$key;
      }
      return _child;
  }\n\t""";
      }
    } else {
      throw new Exception('Invalid value for colors["$key"]');
    }
  });
  return color;
}

/// Processes Paddings
String processBorderWidths(Map<String, dynamic>? spacers) {
  if (spacers == null) {
    return "";
  }
  var spacer = "";

  /// Process All Side Margin
  spacers.forEach((key, value) {
    if (key == 'DEFAULT') {
      spacer += """T get borderBase {
    gxBorderWidth = GxSizes.spacer; 
    return _child;
  }\n\t""";
    } else {
      spacer += """T get border$key {
    gxBorderWidth = GxSizes.spacer$key; 
    return _child;
  }\n\t""";
    }
  });

  return spacer;
}

/// Generate [GxGestureMixin] Mixin
Future<void> generateGestureMixin() async {
  /// Check and create
  Utils.makeDir(gxGestureMixin.target);

  /// Write File
  Utils.writeFile(gxGestureMixin.file, gxGestureMixin.stub);

  /// Show Success message
  print(green("GxGesture Mixin generated successfully!"));
}

/// Generate [GxSizeMixin] Mixin
Future<void> generateSizeMixin() async {
  /// Check and create
  Utils.makeDir(gxSizeMixin.target);

  /// Write File
  Utils.writeFile(gxSizeMixin.file, gxSizeMixin.stub);

  /// Show Success message
  print(green("GxSize Mixin generated successfully!"));
}
