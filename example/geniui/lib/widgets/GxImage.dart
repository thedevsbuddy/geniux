import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';
import 'GxBuilder.dart';

enum ImageType { ASSET, NETWORK, FILE }

class GxImage extends GxWidgetBuilder<Widget>
    with
        GxColorMixin<GxImage>,
        GxRoundnessMixin<GxImage>,
        GxSizeMixin<GxImage> {
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
  GxImage hexColor(String colorHex) =>
      this..gxColor = Color(int.parse(GxUtils.hexToColor(colorHex)));

  /// Opacity
  GxImage withOpacity(double value) {
    _opacity = AlwaysStoppedAnimation(value);
    return this;
  }

  GxImage get o0 => this.._opacity = AlwaysStoppedAnimation(0.0);
  GxImage get opacity0 => this.._opacity = AlwaysStoppedAnimation(0.0);

  GxImage get o10 => this.._opacity = AlwaysStoppedAnimation(0.1);
  GxImage get opacity10 => this.._opacity = AlwaysStoppedAnimation(0.1);

  GxImage get o15 => this.._opacity = AlwaysStoppedAnimation(0.15);
  GxImage get opacity15 => this.._opacity = AlwaysStoppedAnimation(0.15);

  GxImage get o20 => this.._opacity = AlwaysStoppedAnimation(0.2);
  GxImage get opacity20 => this.._opacity = AlwaysStoppedAnimation(0.2);

  GxImage get o25 => this.._opacity = AlwaysStoppedAnimation(0.25);
  GxImage get opacity25 => this.._opacity = AlwaysStoppedAnimation(0.25);

  GxImage get o30 => this.._opacity = AlwaysStoppedAnimation(0.3);
  GxImage get opacity30 => this.._opacity = AlwaysStoppedAnimation(0.3);

  GxImage get o35 => this.._opacity = AlwaysStoppedAnimation(0.35);
  GxImage get opacity35 => this.._opacity = AlwaysStoppedAnimation(0.35);

  GxImage get o40 => this.._opacity = AlwaysStoppedAnimation(0.4);
  GxImage get opacity40 => this.._opacity = AlwaysStoppedAnimation(0.4);

  GxImage get o45 => this.._opacity = AlwaysStoppedAnimation(0.45);
  GxImage get opacity45 => this.._opacity = AlwaysStoppedAnimation(0.45);

  GxImage get o50 => this.._opacity = AlwaysStoppedAnimation(0.5);
  GxImage get opacity50 => this.._opacity = AlwaysStoppedAnimation(0.5);

  GxImage get o55 => this.._opacity = AlwaysStoppedAnimation(0.55);
  GxImage get opacity55 => this.._opacity = AlwaysStoppedAnimation(0.55);

  GxImage get o60 => this.._opacity = AlwaysStoppedAnimation(0.6);
  GxImage get opacity60 => this.._opacity = AlwaysStoppedAnimation(0.6);

  GxImage get o65 => this.._opacity = AlwaysStoppedAnimation(0.65);
  GxImage get opacity65 => this.._opacity = AlwaysStoppedAnimation(0.65);

  GxImage get o70 => this.._opacity = AlwaysStoppedAnimation(0.7);
  GxImage get opacity70 => this.._opacity = AlwaysStoppedAnimation(0.7);

  GxImage get o75 => this.._opacity = AlwaysStoppedAnimation(0.75);
  GxImage get opacity75 => this.._opacity = AlwaysStoppedAnimation(0.75);

  GxImage get o80 => this.._opacity = AlwaysStoppedAnimation(0.8);
  GxImage get opacity80 => this.._opacity = AlwaysStoppedAnimation(0.8);

  GxImage get o85 => this.._opacity = AlwaysStoppedAnimation(0.85);
  GxImage get opacity85 => this.._opacity = AlwaysStoppedAnimation(0.85);

  GxImage get o90 => this.._opacity = AlwaysStoppedAnimation(0.9);
  GxImage get opacity90 => this.._opacity = AlwaysStoppedAnimation(0.9);

  GxImage get o95 => this.._opacity = AlwaysStoppedAnimation(0.95);
  GxImage get opacity95 => this.._opacity = AlwaysStoppedAnimation(0.95);

  GxImage get o100 => this.._opacity = AlwaysStoppedAnimation(1.0);
  GxImage get opacity100 => this.._opacity = AlwaysStoppedAnimation(1.0);

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
            borderRadius: (roundness == null)
                ? BorderRadius.zero
                : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
                borderRadius: (roundness == null)
                    ? BorderRadius.zero
                    : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
                borderRadius: (roundness == null)
                    ? BorderRadius.zero
                    : (radiusGeometry ?? BorderRadius.circular(roundness!)),
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
