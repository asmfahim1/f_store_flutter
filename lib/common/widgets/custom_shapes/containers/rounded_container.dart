import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FRoundedContainer extends StatelessWidget {
  final double? height, width;
  final double borderRadius;
  final Widget? child;
  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? padding, margin;
  final bool showBorder;

  const FRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.borderRadius = FSizes.cardRadiusLg,
    this.child,
    this.backgroundColor = FColors.white,
    this.borderColor = FColors.borderPrimaryColor,
    this.padding,
    this.margin,
    this.showBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
