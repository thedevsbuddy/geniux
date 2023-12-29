import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';
import 'GxBuilder.dart';

class GxContainer extends GxWidgetBuilder<Widget>
    with
        GxMarginMixin<GxContainer>,
        GxPaddingMixin<GxContainer>,
        GxAlignmentMixin<GxContainer>,
        GxColorMixin<GxContainer>,
        GxGradientMixin<GxContainer>,
        GxRoundnessMixin<GxContainer>,
        GxBorderMixin<GxContainer>,
        GxShadowMixin<GxContainer>,
        GxSizeMixin<GxContainer> {
  GxContainer({this.child}) {
    setChildForAlignment(this);
    setChildForColoring(this);
    setChildForGradient(this);
    setChildForPadding(this);
    setChildForMargining(this);
    setChildForRoundness(this);
    setChildForShadow(this);
    setChildForBorder(this);
    setChildForSizing(this);
  }

  final Widget? child;

  bool _isCircleRounded = false;
  List<BoxShadow>? _boxShadow;
  BoxBorder? _border;
  Gradient? _gradient;
  Clip? _clip;
  Matrix4? _transform;
  DecorationImage? _bgImage;
  BoxDecoration? _decoration, _foregroundDecoration;
  BoxConstraints? _constraints;

  /// Provide a custom DecoratedBox
  GxContainer withDecoration(BoxDecoration decoration) =>
      this.._decoration = decoration;

  /// Provide a custom Foreground DecoratedBox
  GxContainer withForegroundDecoration(BoxDecoration decoration) =>
      this.._foregroundDecoration = decoration;

  /// Provide a box constraint
  GxContainer withConstraints(BoxConstraints constraints) =>
      this.._constraints = constraints;

  /// Sets the color property of the box.
  GxContainer color(Color color) => this..gxColor = color;

  /// Sets the color property of the box using the hex color value.
  GxContainer hexColor(String colorHex) =>
      this..gxColor = Color(int.parse(GxUtils.hexToColor(colorHex)));

  /// Sets the transform property to the animated box.
  GxContainer transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  GxContainer clip(Clip clip) => this.._clip = clip;
  GxContainer get clipAntialias => this.._clip = Clip.antiAlias;
  GxContainer get clipAliasWithSaveLayer =>
      this.._clip = Clip.antiAliasWithSaveLayer;
  GxContainer get clipHardEdge => this.._clip = Clip.hardEdge;

  /// Sets the decorated box as circular.
  GxContainer get roundedFull => this.._isCircleRounded = true;

  /// To give custom shadow.
  GxContainer withShadow(List<BoxShadow> shadows) {
    _boxShadow = shadows;
    return this;
  }

  /// To give shadow with some outline color.
  GxContainer shadowOutline({Color? outlineColor}) {
    _boxShadow = [
      BoxShadow(
        color: outlineColor?.withOpacity(0.5) ??
            const Color.fromRGBO(66, 153, 225, 0.5),
        blurRadius: 0.0,
        spreadRadius: 3.0,
        offset: const Offset(0.0, 0.0),
      ),
    ];

    return this;
  }

  /// Sets the border of the Box.
  GxContainer withBorder(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  GxContainer linearGradient(LinearGradient linearGradient) =>
      this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  GxContainer radialGradient(RadialGradient radialGradient) =>
      this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  GxContainer sweepGradient(SweepGradient sweepGradient) =>
      this.._gradient = sweepGradient;

  /// Sets the background image to the decorated box.
  GxContainer bgImage(DecorationImage image) => this.._bgImage = image;

  @override
  Widget render({Key? key}) {
    return Container(
      key: key,
      height: gxHeight,
      constraints: _constraints,
      clipBehavior: _clip ?? Clip.none,
      width: gxWidth,
      padding: gxPadding,
      margin: gxMargin,
      alignment: gxAlignment,
      transform: _transform,
      child: child,
      foregroundDecoration: _foregroundDecoration,
      decoration: _decoration ??
          BoxDecoration(
            color: !hasGradient ? gxColor : null,
            borderRadius: _isCircleRounded || (roundness == null)
                ? null
                : (radiusGeometry ?? BorderRadius.circular(roundness!)),
            shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
            boxShadow: gxShadow ?? _boxShadow ?? [],
            border: _border ?? getBorder(),
            gradient: hasGradient
                ? LinearGradient(
                    colors: gradientColors,
                    stops: stops,
                    begin: begin,
                    end: end)
                : _gradient,
            image: _bgImage,
          ),
    );
  }
}

extension ContainerWidgetExtension on Widget {
  GxContainer get isContainer => GxContainer(child: this);
}
