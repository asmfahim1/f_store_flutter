import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class FCircularContainer extends StatelessWidget {
  final double? height, width, padding, radius;
  final Widget? child;
  final Color backgroundColor;

  const FCircularContainer({
    super.key, this.height = 400, this.width = 400, this.padding = 0, this.radius = 400, this.child, this.backgroundColor = FColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, width: width,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,

      ),
      child: child,
    );
  }
}

