import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FCircularIcon extends StatelessWidget {
  final double? height, width, size;
  final IconData icon;
  final Color? backgroundColor, color;
  final VoidCallback? onPressed;

  const FCircularIcon({
    super.key,
    this.height,
    this.width,
    this.size = FSizes.lg,
    required this.icon,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? (FHelperFunctions.isDarkMode(context)
                ? FColors.black.withOpacity(0.9)
                : FColors.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
