import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:size_adapter/size_adapter.dart';

/// Wrap your route level widget with [SizeAdapter]
///
/// Provide the [designSize] LIKE: const Size(812.0,375.0)
/// 812.0 is the design height
/// 375.0 is the design width

class SizeAdapter extends StatelessWidget {
  /// Provide your design size here
  ///
  /// Eg: const Size(815.0,375.0)
  /// 815.0 is the height of the design
  /// 375.0 is the width of the design
  /// designSize is required
  final Size designSize;

  /// Provide your design status bar size here
  ///
  /// Eg: 44.0
  /// designStatusBarHeight is required
  final double designStatusBarHeight;

  /// Provide your design status bar size here
  ///
  /// Eg: 28.0
  /// homeBarHeight is required
  final double homeBarHeight;

  /// If you want to provide the text scale factor you can
  ///
  /// Eg: [textScaleFactor: 1] by default it is set to 1
  final double? textScaleFactor;

  /// A boolean variable to control the inclusion of top padding in safe area calculations.
  ///
  /// If `true`, the top padding will be considered in safe area calculations, ensuring that
  /// the design layout accommodates the status bar or other top elements. If `false`, the top
  /// padding will be excluded from the safe area calculations.
  ///
  /// Example:
  /// ```dart
  /// bool paddingTop = true;
  /// ```
  final bool? paddingTop;

  /// A boolean variable to control the inclusion of bottom padding in safe area calculations.
  ///
  /// If `true`, the bottom padding will be considered in safe area calculations, ensuring that
  /// the design layout accommodates the navigation bar or other bottom elements. If `false`, the
  /// bottom padding will be excluded from the safe area calculations.
  ///
  /// Example:
  /// ```dart
  /// bool paddingBottom = false;
  /// ```
  final bool? paddingBottom;

  /// Here you provide the widget
  ///
  /// Eg: [MaterialApp();]
  /// child is required
  final Widget child;

  const SizeAdapter({
    super.key,
    required this.designSize,
    required this.designStatusBarHeight,
    required this.homeBarHeight,
    required this.child,
    this.textScaleFactor,
    this.paddingTop,
    this.paddingBottom,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: paddingTop ?? false,
      bottom: paddingBottom ?? true,
      child: LayoutBuilder(builder: (context, constraints) {
        Size safeDesignSize = Size(designSize.width,
            (designSize.height - (designStatusBarHeight + homeBarHeight)));
        //TODO Remove this if not needed
        log(safeDesignSize.width.toString());
        log(safeDesignSize.height.toString());
        log(MediaQuery.of(context).padding.bottom.toString());

        /// Initialize [Size Adapter]
        SizeAdapterConfig.init(context: context, designSize: safeDesignSize);
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: textScaleFactor ?? 1),
          child: child,
        );
      }),
    );
  }
}
