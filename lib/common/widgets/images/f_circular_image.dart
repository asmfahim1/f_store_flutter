import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FCircularImage extends StatelessWidget {
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor, overlayColor;
  final BoxFit fit;
  final double height, width, padding;

  const FCircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.cover,
     this.height = 56,
     this.width = 56,
     this.padding = FSizes.sm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (FHelperFunctions.isDarkMode(context) ? FColors.white : FColors.dark),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor
            ,
      ),
    );
  }
}
