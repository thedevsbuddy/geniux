/// Get the targetes directory
///
/// [target] Provides the target directory for the `geniui.dart` Library File
const String target = "geniui/lib";

/// Get the full file path for the `geniui.dart` Library File
///
/// [file] This gives a boilerplate for the `geniui.dart` Library File
const String file = "geniui/lib/geniui.dart";

/// Get the stub content for the `geniui.dart` Library File
///
/// [stub] This gives a boilerplate for the `geniui.dart` Library File
const String stub = """
library geniui;

/// Extensions
export "./extensions/GxColorExtension.dart";
export "./extensions/GxWidgetExtension.dart";
export "./extensions/GxNumbersExtension.dart";
export "./extensions/GxContextExtension.dart";

/// Flutter Widgets
export './widgets/GxAppBuilder.dart';
export './widgets/GxContainer.dart';
export './widgets/GxText.dart';
export './widgets/GxButton.dart';
export './widgets/GxRow.dart';
export './widgets/GxColumn.dart';
export './widgets/GxWrap.dart';
export './widgets/GxStack.dart';
export './widgets/GxPadding.dart';
export './widgets/GxInkWell.dart';
export './widgets/GxImage.dart';

/// Utilities
export "./utilities/GxColors.dart";
export "./utilities/GxUtils.dart";
export "./utilities/GxSizes.dart";
export "./utilities/GxService.dart";

/// Mixins
export "./mixins/GxColorMixin.dart";
export "./mixins/GxGradientMixin.dart";
export "./mixins/GxPaddingMixin.dart";
export "./mixins/GxMarginMixin.dart";
export "./mixins/GxAlignmentMixin.dart";
export "./mixins/GxShadowMixin.dart";
export "./mixins/GxRoundnessMixin.dart";
export "./mixins/GxBorderMixin.dart";
export "./mixins/GxGestureMixin.dart";
export "./mixins/GxSizeMixin.dart";
""";
