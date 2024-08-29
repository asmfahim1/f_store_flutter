import 'package:f_store_flutter/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class FBrandTitleText extends StatelessWidget {
  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brandTextSize;
  const FBrandTitleText(
      {super.key,
      required this.title,
      this.color,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.SMALL});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.SMALL
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.MEDIUM
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.LARGE
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.labelMedium!.apply(color: color)
    );
  }
}
