import 'package:dcli/dcli.dart';
import 'package:geniux/src/utilities/Utils.dart';
import 'package:geniux/geniui/lib/builders/GxButton.dart' as gxButton;
import 'package:geniux/geniui/lib/builders/GxColumn.dart' as gxColumn;
import 'package:geniux/geniui/lib/builders/GxContainer.dart'
    as gxContainer;
import 'package:geniux/geniui/lib/builders/GxImage.dart' as gxImage;
import 'package:geniux/geniui/lib/builders/GxPadding.dart' as gxPadding;
import 'package:geniux/geniui/lib/builders/GxRow.dart' as gxRow;
import 'package:geniux/geniui/lib/builders/GxStack.dart' as gxStack;
import 'package:geniux/geniui/lib/builders/GxWrap.dart' as gxWrap;
import 'package:geniux/geniui/lib/builders/GxInkwell.dart' as gxInkWell;

// Builder Generators
import "BuilderGenerators/GxBuilderGenerator.dart" as gxBuilderGenerator;

Future<void> generate(_) async {
  await gxBuilderGenerator.generate(_);
  await generateGxContainer();
  await generateGxButton();
  await generateGxRow();
  await generateGxColumn();
  await generateGxWrap();
  await generateGxPadding();
  await generateGxStack();
  await generateGxInkWell();
  await generateGxImage();
}

/// Generate [GxRow]
Future<void> generateGxRow() async {
  /// Check and create
  Utils.makeDir(gxRow.target);

  /// Write File
  Utils.writeFile(gxRow.file, gxRow.stub);

  /// Show Success message
  print(green("GxRow generated successfully!"));
}

/// Generate [GxColumn]
Future<void> generateGxColumn() async {
  /// Check and create
  Utils.makeDir(gxColumn.target);

  /// Write File
  Utils.writeFile(gxColumn.file, gxColumn.stub);

  /// Show Success message
  print(green("GxColumn generated successfully!"));
}

/// Generate [GxWrap]
Future<void> generateGxWrap() async {
  /// Check and create
  Utils.makeDir(gxWrap.target);

  /// Write File
  Utils.writeFile(gxWrap.file, gxWrap.stub);

  /// Show Success message
  print(green("GxWrap generated successfully!"));
}

/// Generate [GxContainer]
Future<void> generateGxContainer() async {
  /// Get Gx Utility stub Template / File
  var gxContainerFileData = gxContainer.stub;

  /// Check and create
  Utils.makeDir(gxContainer.target);

  /// Write File
  Utils.writeFile(gxContainer.file, gxContainerFileData);

  /// Show Success message
  print(green("GxContainer Generated successfully!"));
}

/// Generate [GxButton]
Future<void> generateGxButton() async {
  /// Check and create
  Utils.makeDir(gxButton.target);

  /// Write File
  Utils.writeFile(gxButton.file, gxButton.stub);

  /// Show Success message
  print(green("GxButton generated successfully!"));
}

/// Generate [GxPadding]
Future<void> generateGxPadding() async {
  /// Check and create
  Utils.makeDir(gxPadding.target);

  /// Write File
  Utils.writeFile(gxPadding.file, gxPadding.stub);

  /// Show Success message
  print(green("GxPadding generated successfully!"));
}

/// Generate [GxStack]
Future<void> generateGxStack() async {
  /// Check and create
  Utils.makeDir(gxStack.target);

  /// Write File
  Utils.writeFile(gxStack.file, gxStack.stub);

  /// Show Success message
  print(green("GxStack generated successfully!"));
}

/// Generate [GxInkWell]
Future<void> generateGxInkWell() async {
  /// Check and create
  Utils.makeDir(gxInkWell.target);

  /// Write File
  Utils.writeFile(gxInkWell.file, gxInkWell.stub);

  /// Show Success message
  print(green("GxInkWell generated successfully!"));
}

/// Generate [GxImage]
Future<void> generateGxImage() async {
  /// Get Gx Utility stub Template / File
  var gxImageData = gxImage.stub;

  /// Process stub Template / File
  gxImageData = gxImageData.replaceAll(
      "%opacity%", processOpacity(Utils.configs.opacity));

  /// Check and create
  Utils.makeDir(gxImage.target);

  /// Write File
  Utils.writeFile(gxImage.file, gxImageData);

  /// Show Success message
  print(green("GxImage generated successfully!"));
}

String processOpacity(Map<String, dynamic>? opacity) {
  if (opacity == null) {
    return "";
  }
  var op = "";
  opacity.forEach((key, value) {
    if (value != '' || key != '') {
      op +=
          "GxImage get o$key => this.._opacity = AlwaysStoppedAnimation($value);\n\t";
      op +=
          "GxImage get opacity$key => this.._opacity = AlwaysStoppedAnimation($value);\n\t\n\t";
    }
  });
  return op;
}

// GxImage get o20 => this.._opacity = AlwaysStoppedAnimation(.5);
// GxImage get opacity20 => this.._opacity = AlwaysStoppedAnimation(.5);
