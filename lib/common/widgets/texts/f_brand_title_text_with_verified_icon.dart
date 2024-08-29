import 'package:f_store_flutter/common/widgets/texts/f_brand_title_text.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/enums.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  final String title;
  final int mazLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  const FBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.mazLines = 1,
    this.textColor,
    this.iconColor = FColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.SMALL,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: FBrandTitleText(title: title, color: textColor, maxLines: mazLines, textAlign: textAlign, brandTextSize: brandTextSize,),),
        SizedBox(width: FSizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: FSizes.iconXs,),
      ],
    );
  }
}
