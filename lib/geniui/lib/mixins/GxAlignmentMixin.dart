/// Get the targetes directory
///
/// [target] Provides the target directory for the `GxAlignmentMixin` class
const String target = "geniui/lib/mixins/";

/// Get the full file path for the `GxAlignmentMixin` Class
///
/// [file] This gives a boilerplate for the `GxAlignmentMixin` class
const String file = "geniui/lib/mixins/GxAlignmentMixin.dart";

/// Get the stub content for the `GxAlignmentMixin` Class
///
/// [stub] This gives a boilerplate for the `GxAlignmentMixin` class
const String stub = """
import 'package:flutter/material.dart';

mixin GxAlignmentMixin<T> {
  late T _child;

  Alignment? gxAlignment;

  void setChildForAlignment(T child) {
    _child = child;
  }

  T alignment(Alignment val) {
    gxAlignment = val;
    return _child;
  }

  T get topCenter => _alignChild(alignment: Alignment.topCenter);
  T get topLeft => _alignChild(alignment: Alignment.topLeft);
  T get topRight => _alignChild(alignment: Alignment.topRight);
  T get center => _alignChild(alignment: Alignment.center);
  T get centerLeft => _alignChild(alignment: Alignment.centerLeft);
  T get centerRight => _alignChild(alignment: Alignment.centerRight);
  T get bottomCenter => _alignChild(alignment: Alignment.bottomCenter);
  T get bottomLeft => _alignChild(alignment: Alignment.bottomLeft);
  T get bottomRight => _alignChild(alignment: Alignment.bottomRight);

  T _alignChild({required Alignment alignment}) {
    gxAlignment = alignment;
    return _child;
  }
}
""";
