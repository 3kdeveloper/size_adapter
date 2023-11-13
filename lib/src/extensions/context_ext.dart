import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double get paddingBottom => (MediaQuery.of(this).padding.bottom > 0) ? -1 : 0;
}
