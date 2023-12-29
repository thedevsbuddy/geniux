import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';
import 'GxBuilder.dart';

class GxButton extends GxWidgetBuilder<Widget>
    with
        GxMarginMixin<GxButton>,
        GxPaddingMixin<GxButton>,
        GxAlignmentMixin<GxButton>,
        GxColorMixin<GxButton>,
        GxGradientMixin<GxButton>,
        GxRoundnessMixin<GxButton>,
        GxBorderMixin<GxButton>,
        GxShadowMixin<GxButton>,
        GxGestureMixin<GxButton>,
        GxSizeMixin<GxButton> {
  GxButton({required this.child}) {
    setChildForAlignment(this);
    setChildForColoring(this);
    setChildForGradient(this);
    setChildForPadding(this);
    setChildForMargining(this);
    setChildForRoundness(this);
    setChildForShadow(this);
    setChildForBorder(this);
    setChildForGestureDetection(this);
    setChildForSizing(this);
  }

  final Widget child;
  Widget? _loadingWidget =
      SizedBox(height: 16, child: CircularProgressIndicator());

  bool _isBusy = false;
  BoxBorder? _border;
  Gradient? _gradient;
  Clip? _clip;
  Matrix4? _transform;
  BoxConstraints? _constraints;

  /// Provide a box constraint
  GxButton withConstraints(BoxConstraints constraints) =>
      this.._constraints = constraints;

  /// Sets the color property of the box.
  GxButton color(Color color) => this..gxColor = color;

  /// Sets the transform property to the animated box.
  GxButton transform(Matrix4 val) => this.._transform = val;

  /// Sets the clip behavior of the box.
  GxButton clip(Clip clip) => this.._clip = clip;

  /// To make it busy.
  GxButton setBusy(bool isBusy) {
    _isBusy = isBusy;
    return this;
  }

  /// To show on busy state.
  @Deprecated('Please use [setBusyWidget] instead.')
  GxButton addBusyWidget(Widget? busyWidget) {
    _loadingWidget = busyWidget;
    return this;
  }

  GxButton setBusyWidget(Widget? busyWidget) {
    _loadingWidget = busyWidget;
    return this;
  }

  /// Sets the border of the Box.
  GxButton withBorder(Border border) {
    _border = border;
    return this;
  }

  /// Sets the linear gradient to the decorated box.
  GxButton linearGradient(LinearGradient linearGradient) =>
      this.._gradient = linearGradient;

  /// Sets the radial gradient to the decorated box.
  GxButton radialGradient(RadialGradient radialGradient) =>
      this.._gradient = radialGradient;

  /// Sets the sweep gradient to the decorated box.
  GxButton sweepGradient(SweepGradient sweepGradient) =>
      this.._gradient = sweepGradient;

  @override
  Widget render({Key? key}) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: gxOnTap,
      onDoubleTap: gxOnDoubleTap,
      onLongPress: gxOnLongPress,
      onTapDown: gxOnTapDown,
      onTapUp: gxOnTapUp,
      onFocusChange: gxOnFocusChange,
      onHighlightChanged: gxOnHighlightChanged,
      onTapCancel: gxOnTapCancel,
      onHover: gxOnHover,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            key: key,
            duration: const Duration(milliseconds: 250),
            height: gxWidth,
            constraints: _constraints,
            clipBehavior: _clip ?? Clip.none,
            width: gxHeight,
            padding: gxPadding,
            margin: gxMargin,
            alignment: gxAlignment,
            transform: _transform,
            child: _isBusy ? _loadingWidget : child,
            decoration: BoxDecoration(
              color: !hasGradient ? gxColor : null,
              borderRadius: (roundness == null)
                  ? null
                  : (radiusGeometry ?? BorderRadius.circular(roundness!)),
              boxShadow: gxShadow ?? [],
              border: _border ?? getBorder(),
              gradient: hasGradient
                  ? LinearGradient(
                      colors: gradientColors,
                      stops: stops,
                      begin: begin,
                      end: end)
                  : _gradient,
            ),
          ),
        ],
      ),
    );
  }
}

extension GxButtonWidgetExtension on Widget {
  GxButton get isButton => GxButton(child: this);
}
