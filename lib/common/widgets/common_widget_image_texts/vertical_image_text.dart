import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class FVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function() onPressed;

  const FVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = FColors.white,
    this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: FSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(FSizes.sm),
              decoration: BoxDecoration(
                color:
                backgroundColor ?? (dark ? FColors.black : FColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: (dark ? FColors.light : FColors.dark),
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}