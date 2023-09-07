import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  // double get width => MediaQuery.of(this).size.width;
  double get width=>MediaQuery.sizeOf(this).width;
  // double get height => MediaQuery.of(this).size.height;
  double get height=>MediaQuery.sizeOf(this).height;
}