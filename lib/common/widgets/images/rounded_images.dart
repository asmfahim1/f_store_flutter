import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FRoundedImage extends StatelessWidget {
  final double? height, width;
  final String imageUrl;
  final bool applyImageBorderRadius;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final BoxBorder? border;
  final double borderRadius;

  const FRoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.applyImageBorderRadius = true,
    this.backgroundColor = FColors.light,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.border,
    this.borderRadius = FSizes.md,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}