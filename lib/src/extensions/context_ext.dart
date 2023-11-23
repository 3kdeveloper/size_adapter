import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  MediaQueryData get mediaQueryData => MediaQuery.of(this);
  double get width => mediaQueryData.size.width;
  double get paddingBottom => (mediaQueryData.padding.bottom > 0)
      ? (mediaQueryData.padding.bottom - 1)
      : 0;
}
