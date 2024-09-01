import 'package:f_store_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store_flutter/common/widgets/images/f_circular_image.dart';
import 'package:f_store_flutter/common/widgets/texts/f_brand_title_text_with_verified_icon.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/enums.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FBrandCard extends StatelessWidget {
  final Function()? onTap;
  final bool showBorder;
  const FBrandCard({super.key, this.onTap, required this.showBorder});

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: FRoundedContainer(
        padding: const EdgeInsets.all(FSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: FCircularImage(
                image: FImagePaths.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                dark ? FColors.white : FColors.black,
              ),
            ),
            const SizedBox(
              width: FSizes.spaceBtwItems / 2,
            ),

            /// Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.LARGE,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
