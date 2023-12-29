import 'package:flutter/material.dart';

/// Extension Methods for context
extension GxContextExtension on BuildContext {
  // Get screen size
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
