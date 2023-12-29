/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxImage` class
const String target = "geniui/lib/widgets/";

/// Get the full file path for the `GxImage` Class
///
/// [file] This gives a boilerplate for the `GxImage` class
const String file = "geniui/lib/widgets/GxImage.dart";

/// Get the stub content for the `GxImage` Class
///
/// [stub] This gives a boilerplate for the `GxImage` class
const String stub = """
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';
import 'GxBuilder.dart';

enum ImageType { ASSET, NETWORK, FILE }

class GxImage extends GxWidgetBuilder<Widget> with GxColorMixin<GxImage>, GxRoundnessMixin<GxImage>, GxSizeMixin<GxImage> {
  GxImage(this.path) {
    setChildForColoring(this);
    setChildForRoundness(this);
    setChildForSizing(this);
  }

  final String path;

  ImageType _imageType = ImageType.ASSET;

  Animation<double>? _opacity;
  BlendMode? _colorBlendMode;
  BoxFit? _fit;
  Alignment _alignment = Alignment.center;
  ImageRepeat _repeat = ImageRepeat.noRepeat;
  FilterQuality _filterQuality = FilterQuality.low;

  /// Sets the color property of the box.
  GxImage color(Color color) => this..gxColor = color;

  /// Sets the color property of the box using the hex color value.
  GxImage hexColor(String colorHex) => this..gxColor = Color(int.parse(GxUtils.hexToColor(colorHex)));

  /// Opacity
  GxImage withOpacity(double value) {
    _opacity = AlwaysStoppedAnimation(value);
    return this;
  }

  %opacity%

  /// BoxFit
  GxImage get cover => this.._fit = BoxFit.cover;
  GxImage get fitCover => this.._fit = BoxFit.cover;
  GxImage get contain => this.._fit = BoxFit.contain;
  GxImage get fitContain => this.._fit = BoxFit.contain;
  GxImage get fill => this.._fit = BoxFit.fill;
  GxImage get fitFill => this.._fit = BoxFit.fill;
  GxImage get fitHeight => this.._fit = BoxFit.fitHeight;
  GxImage get fitWidth => this.._fit = BoxFit.fitWidth;

  @override
  Widget render({Key? key}) {
    // File Object
    File? _filePath;

    if (path.contains('https://') || path.contains('http://')) {
      _imageType = ImageType.NETWORK;
    } else if (path.contains('file://')) {
      _imageType = ImageType.FILE;
      _filePath = File(path);
    } else {
      _imageType = ImageType.ASSET;
    }

    return _imageType == ImageType.ASSET
        ? ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
            child: Image.asset(
              path,
              key: key,
              color: gxColor,
              width: gxWidth,
              height: gxHeight,
              opacity: _opacity,
              colorBlendMode: _colorBlendMode,
              fit: _fit,
              alignment: _alignment,
              repeat: _repeat,
              filterQuality: _filterQuality,
            ),
          )
        : (_imageType == ImageType.FILE)
            ? ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
                child: Image.file(
                  _filePath!,
                  key: key,
                  color: gxColor,
                  width: gxWidth,
                  height: gxHeight,
                  opacity: _opacity,
                  colorBlendMode: _colorBlendMode,
                  fit: _fit,
                  alignment: _alignment,
                  repeat: _repeat,
                  filterQuality: _filterQuality,
                ),
              )
            : ClipRRect(
            borderRadius: (roundness == null) ? BorderRadius.zero : (radiusGeometry ?? BorderRadius.circular(roundness!)),
                child: Image.network(
                  path,
                  key: key,
                  color: gxColor,
                  width: gxWidth,
                  height: gxHeight,
                  opacity: _opacity,
                  colorBlendMode: _colorBlendMode,
                  fit: _fit,
                  alignment: _alignment,
                  repeat: _repeat,
                  filterQuality: _filterQuality,
                ),
              );
  }
}

""";
