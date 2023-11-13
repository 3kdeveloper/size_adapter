import 'package:flutter/material.dart';
import 'package:size_adapter/size_adapter.dart';
import 'package:size_adapter/src/extensions/context_ext.dart';

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

  /// Here you provide the widget
  ///
  /// Eg: [MaterialApp();]
  /// child is required
  final Widget child;

  /// If you want to provide the text scale factor you can
  ///
  /// Eg: [textScaleFactor: 1] by default it is set to 1
  final double? textScaleFactor;

  /// Constructor
  ///
  /// --
  const SizeAdapter({
    super.key,
    required this.designSize,
    required this.designStatusBarHeight,
    required this.homeBarHeight,
    required this.child,
    this.textScaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.paddingBottom),
      child: LayoutBuilder(builder: (context, constraints) {
        Size safeDesignSize = Size(designSize.width,
            (designSize.height - (designStatusBarHeight + homeBarHeight)));

        /// Initializes the SizeAdapterConfig for responsive design.
        ///
        /// The `init` method sets up the SizeAdapterConfig, enabling the application
        /// to create layouts that adapt to different screen sizes and resolutions.
        ///
        /// ### Parameters:
        /// - `context` (required): The BuildContext to access theme and media information.
        /// - `designSize` (required): The original design size of the screen, typically
        ///    representing the dimensions to which the application was originally designed.
        ///
        /// ### Usage:
        /// ```dart
        /// SizeAdapterConfig.init(context: context, designSize: safeDesignSize);
        /// ```
        ///
        /// This initialization is crucial for achieving responsive layouts. It allows
        /// the application to dynamically adjust widget sizes based on the relationship
        /// between the original design and the actual device screen.
        ///
        /// **Note:** Initializing SizeAdapterConfig is typically done early in the widget
        /// tree, ensuring that the layout maintains its intended proportions across
        /// different devices and screen sizes.

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
