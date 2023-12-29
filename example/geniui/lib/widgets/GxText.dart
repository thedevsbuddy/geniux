import 'package:flutter/material.dart';
import 'package:geniui/geniui.dart';
import 'GxBuilder.dart';

/// Flutter Text Builder Widget
/// to provide utilities in your Text Widget

class GxText extends GxWidgetBuilder<Widget> with GxColorMixin<GxText> {
  GxText(this._text) {
    setChildForColoring(this);
  }

  GxText.existing(this._text, this._textStyle) {
    setChildForColoring(this);
  }

  String _text;
  String? _fontFamily;
  double? _scaleFactor, _fontSize, _letterSpacing, _lineHeight, _wordSpacing;
  int? _maxLines;
  FontWeight? _fontWeight;
  TextAlign? _textAlign;
  FontStyle? _fontStyle;
  TextDecoration? _decoration;
  TextStyle? _textStyle, _themedStyle;
  StrutStyle? _strutStyle;
  TextOverflow? _overflow;
  TextBaseline? _textBaseline;
  bool? _softWrap;

  /// Set [color] of the text
  GxText color(Color color) {
    gxColor = color;
    return this;
  }

  GxText maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  /// Set [fontFamily] for the text
  GxText fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Whether the text should break at soft line breaks.
  GxText softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  /// The common baseline that should be aligned between this text span and its
  /// parent text span, or, for the root text spans, with the line box.
  GxText textBaseLine(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }

  /// Bring the words closer.
  GxText wordSpacing(double spacing) {
    _wordSpacing = spacing;
    return this;
  }

  /// Can be used to set overflow of a text.
  /// How visual overflow should be handled.
  GxText overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  /// Set [FontWeight] for the text
  GxText fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }

  /// Replace the closest enclosing [DefaultTextStyle].
  GxText textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  /// See [StrutStyle] for details.
  GxText strutStyle(StrutStyle _style) {
    _strutStyle = _style;
    return this;
  }

  /// ============== TEXT ALIGNMENT ============== ///
  GxText align(TextAlign align) => this.._textAlign = align;

  /// To align text in [center]
  GxText get center => this.._textAlign = TextAlign.center;

  /// To align text in [start]
  GxText get start => this.._textAlign = TextAlign.start;

  /// To align text in [end]
  GxText get end => this.._textAlign = TextAlign.end;

  /// To align text as [justify]
  GxText get justify => this.._textAlign = TextAlign.justify;

  /// To overlow text as [fade]
  GxText get fade => this.._overflow = TextOverflow.fade;

  /// To overlow text as [ellipsis]
  GxText get ellipsis => this.._overflow = TextOverflow.ellipsis;

  /// Truncates the text and add trailing [...]
  ///
  /// Sets overlow text as [ellipsis]
  GxText get truncate => this.._overflow = TextOverflow.ellipsis;

  /// To overlow text as [visible]
  GxText get visible => this.._overflow = TextOverflow.visible;

  /// ============== FONT THEME ============== ///

  /// Sets [TextTheme] headline 1
  @Deprecated("Use displayLarge instead.")
  GxText headline1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline1;
    return this;
  }

  /// Sets [TextTheme] displayLarge
  GxText displayLarge(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.displayLarge;
    return this;
  }

  /// Sets [TextTheme] headline 2
  @Deprecated("Use displayMedium instead.")
  GxText headline2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline2;
    return this;
  }

  /// Sets [TextTheme] displayMedium
  GxText displayMedium(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.displayMedium;
    return this;
  }

  /// Sets [TextTheme] headline 3
  @Deprecated("Use displaySmall instead.")
  GxText headline3(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline3;
    return this;
  }

  /// Sets [TextTheme] displaySmall
  GxText displaySmall(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.displaySmall;
    return this;
  }

  /// Sets [TextTheme] headline 4
  @Deprecated("Use `headlineMedium(context)` instead")
  GxText headline4(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline4;
    return this;
  }

  /// Sets [TextTheme] headlineMedium
  GxText headlineMedium(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headlineMedium;
    return this;
  }

  /// Sets [TextTheme] headline 5
  @Deprecated("Use `headlineSmall(context)` instead")
  GxText headline5(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline5;
    return this;
  }

  /// Sets [TextTheme] headlineSmall
  GxText headlineSmall(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headlineSmall;
    return this;
  }

  /// Sets [TextTheme] headline 6
  @Deprecated("Use `titleLarge(context)` instead")
  GxText headline6(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.headline6;
    return this;
  }

  /// Sets [TextTheme] titleLarge
  GxText titleLarge(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.titleLarge;
    return this;
  }

  /// Sets [TextTheme] bodyText1
  @Deprecated("Use `bodyLarge(context)` instead")
  GxText bodyText1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText1;
    return this;
  }

  /// Sets [TextTheme] bodyLarge
  GxText bodyLarge(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyLarge;
    return this;
  }

  /// Sets [TextTheme] bodyText2
  @Deprecated("Use `bodyMedium(context)` instead")
  GxText bodyText2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyText2;
    return this;
  }

  /// Sets [TextTheme] bodyMedium
  GxText bodyMedium(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodyMedium;
    return this;
  }

  /// Sets [TextTheme] caption
  @Deprecated("Use `bodySmall(context)` instead")
  GxText caption(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.caption;
    return this;
  }

  /// Sets [TextTheme] bodySmall
  GxText bodySmall(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.bodySmall;
    return this;
  }

  /// Sets [TextTheme] subtitle1
  @Deprecated("Use `titleMedium(context)` instead")
  GxText subtitle1(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle1;
    return this;
  }

  /// Sets [TextTheme] titleMedium
  GxText titleMedium(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.titleMedium;
    return this;
  }

  /// Sets [TextTheme] subtitle2
  @Deprecated("Use `titleSmall(context)` instead")
  GxText subtitle2(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.subtitle2;
    return this;
  }

  /// Sets [TextTheme] titleSmall
  GxText titleSmall(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.titleSmall;
    return this;
  }

  /// Sets [TextTheme] overline
  @Deprecated("Use `labelSmall(context)` instead")
  GxText overlineText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.overline;
    return this;
  }

  /// Sets [TextTheme] labelSmall
  GxText labelSmall(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.labelSmall;
    return this;
  }

  /// Sets [TextTheme] button
  @Deprecated("Use `labelLarge(context)` instead")
  GxText buttonText(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.button;
    return this;
  }

  /// Sets [TextTheme] labelLarge
  GxText labelLarge(BuildContext context) {
    _themedStyle = Theme.of(context).textTheme.labelLarge;
    return this;
  }

  /// ============== FONT SIZES ============== ///
  GxText get textBase => this.._fontSize = GxSizes.textBase;
  GxText get textXs => this.._fontSize = GxSizes.textXs;
  GxText get textSm => this.._fontSize = GxSizes.textSm;
  GxText get textLg => this.._fontSize = GxSizes.textLg;
  GxText get textXl => this.._fontSize = GxSizes.textXl;
  GxText get textXl2 => this.._fontSize = GxSizes.textXl2;
  GxText get textXl3 => this.._fontSize = GxSizes.textXl3;
  GxText get textXl4 => this.._fontSize = GxSizes.textXl4;
  GxText get textXl5 => this.._fontSize = GxSizes.textXl5;
  GxText get textXl6 => this.._fontSize = GxSizes.textXl6;
  GxText get textXl7 => this.._fontSize = GxSizes.textXl7;
  GxText get textXl8 => this.._fontSize = GxSizes.textXl8;
  GxText get textXl9 => this.._fontSize = GxSizes.textXl9;

  /// To set fontSize of the text using [size]
  GxText size(double? size) => this.._fontSize = size;

  /// Sets [textScaleFactor] to custom value
  GxText scale(double value) => _fontSizedText(child: this, scaleFactor: value);

  GxText _fontSizedText({required double scaleFactor, required GxText child}) {
    _fontSize = _fontSize ?? 14.0;
    _scaleFactor = scaleFactor;
    return this;
  }

  /// ============== FONT WEIGHT ============== ///

  /// Sets [FontWeight] to [FontWeight.w100]
  GxText get hairLine =>
      _fontWeightedText(child: this, weight: FontWeight.w100);

  /// Sets [FontWeight] to [FontWeight.w200]
  GxText get thin => _fontWeightedText(child: this, weight: FontWeight.w200);

  /// Sets [FontWeight] to [FontWeight.w300]
  GxText get light => _fontWeightedText(child: this, weight: FontWeight.w300);

  /// Sets [FontWeight] to [FontWeight.w400]
  GxText get normal => _fontWeightedText(child: this, weight: FontWeight.w400);

  /// Sets [FontWeight] to [FontWeight.w500]
  GxText get medium => _fontWeightedText(child: this, weight: FontWeight.w500);

  /// Sets [FontWeight] to [FontWeight.w600]
  GxText get semiBold =>
      _fontWeightedText(child: this, weight: FontWeight.w600);

  /// Sets [FontWeight] to [FontWeight.w700]
  GxText get bold => _fontWeightedText(child: this, weight: FontWeight.w700);

  /// Sets [FontWeight] to [FontWeight.w800]
  GxText get extraBold =>
      _fontWeightedText(child: this, weight: FontWeight.w800);

  /// Sets [FontWeight] to [FontWeight.w900]
  GxText get extraBlack =>
      _fontWeightedText(child: this, weight: FontWeight.w900);

  GxText _fontWeightedText(
      {required FontWeight weight, required GxText child}) {
    _fontWeight = weight;
    return this;
  }

  /// ============== TEXT LETTER SPACING ============== ///

  /// Sets [letterSpacing] to -3.0
  GxText get tightest => this.._letterSpacing = -3.0;

  /// Sets [letterSpacing] to -2.0
  GxText get tighter => this.._letterSpacing = -2.0;

  /// Sets [letterSpacing] to -1.0
  GxText get tight => this.._letterSpacing = -1.0;

  /// Sets [letterSpacing] to 1.0
  GxText get wide => this.._letterSpacing = 1.0;

  /// Sets [letterSpacing] to 2.0
  GxText get wider => this.._letterSpacing = 2.0;

  /// Sets [letterSpacing] to 3.0
  GxText get widest => this.._letterSpacing = 3.0;

  /// Sets custom [letterSpacing] with [val]
  GxText letterSpacing(double val) => this.._letterSpacing = val;

  /// ============== TEXT TRANSFORMATION ============== ///

  /// Sets [FontStyle] to [FontStyle.italic]
  GxText get italic => this.._fontStyle = FontStyle.italic;

  /// Sets [TextDecoration] as [TextDecoration.underline]
  GxText get underline => this.._decoration = TextDecoration.underline;

  /// Sets [TextDecoration] as [TextDecoration.overline]
  GxText get overline => this.._decoration = TextDecoration.overline;

  /// Sets [TextDecoration] as [TextDecoration.lineThrough]
  GxText get lineThrough => this.._decoration = TextDecoration.lineThrough;

  /// Converts the text to fully uppercase.
  GxText get uppercase => this.._text = _text.toUpperCase();

  /// Converts the text to fully lowercase.
  GxText get lowercase => this.._text = _text.toLowerCase();

  /// Converts the text to first letter of very word as uppercase.
  GxText get capitalize => this.._text = GxUtils.ucWords('${this.._text}');

  /// ============== LEADING ============== ///
  /// Sets [lineHeight] to 0.75
  GxText get leading3 => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  GxText get leading4 => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.25
  GxText get leading5 => this.._lineHeight = 1.25;

  /// Sets [lineHeight] to 1.5
  GxText get leading6 => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.75
  GxText get leading7 => this.._lineHeight = 1.75;

  /// Sets [lineHeight] to 2
  GxText get leading8 => this.._lineHeight = 2;

  /// Sets [lineHeight] to 2.25
  GxText get leading9 => this.._lineHeight = 2.25;

  /// Sets [lineHeight] to 2.5
  GxText get leading10 => this.._lineHeight = 2.5;

  /// Sets [lineHeight] to 1
  GxText get leadingNone => this.._lineHeight = 0.75;

  /// Sets [lineHeight] to 1
  GxText get leadingTight => this.._lineHeight = 1;

  /// Sets [lineHeight] to 1.375
  GxText get leadingSnug => this.._lineHeight = 1.375;

  /// Sets [lineHeight] to 1.5
  GxText get leadingNormal => this.._lineHeight = 1.5;

  /// Sets [lineHeight] to 1.625
  GxText get leadingRelaxed => this.._lineHeight = 1.625;

  /// Sets [lineHeight] to 2
  GxText get leadingLoose => this.._lineHeight = 2;

  /// Sets custom [lineHeight] with [val]
  GxText lineHeight(double val) => this.._lineHeight = val;

  /// ============== RENDER TEXT WIDGET ============== ///
  @override
  Widget render({Key? key}) {
    final ts = TextStyle(
      color: gxColor,
      fontSize: _fontSize,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      fontWeight: _fontWeight,
      letterSpacing: _letterSpacing,
      decoration: _decoration,
      height: _lineHeight,
      textBaseline: _textBaseline ?? TextBaseline.alphabetic,
      wordSpacing: _wordSpacing,
    );

    return Text(
      _text,
      key: key,
      textAlign: _textAlign,
      maxLines: _maxLines,
      textScaleFactor: _scaleFactor,
      style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
      softWrap: _softWrap ?? true,
      overflow: _overflow ?? TextOverflow.clip,
      strutStyle: _strutStyle,
    );
  }
}

extension TextExtensions on Text {
  GxText get isText => GxText.existing(data!, style);
}

extension TextStringExtensions on String {
  /// Extension method to directly access [GxText]
  /// with [String] itself
  @Deprecated('Please use [isText] instead.')
  GxText get text => GxText(this);

  GxText get isText => GxText(this);
}
