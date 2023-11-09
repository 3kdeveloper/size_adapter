import 'package:size_adapter/size_adapter.dart';

extension SizeConfigExt on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => height(toDouble());

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => width(toDouble());

  /// Calculate border radius proportionate to screen width
  ///
  /// Eg: 20.r -> will take 20% radius of the screen
  double get r => radius(toDouble());

  /// Calculate padding proportionate to screen width
  ///
  /// Eg: 20.p -> will take 20% padding of the screen
  double get p => padding(toDouble());

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  ///
  /// Eg: 20.sp -> will take 20% of the screen
  double get sp => adaptiveTextSize(toDouble());
}
