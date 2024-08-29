import 'package:f_store_flutter/common/styles/shadows.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store_flutter/common/widgets/icons/f_circular_icon.dart';
import 'package:f_store_flutter/common/widgets/images/rounded_images.dart';
import 'package:f_store_flutter/common/widgets/texts/f_brand_title_text_with_verified_icon.dart';
import 'package:f_store_flutter/common/widgets/texts/product_title_text.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FProductCardVertical extends StatelessWidget {
  const FProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [FShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FSizes.productImageRadius),
          color: dark ? FColors.darkGrey : FColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Whishlist button and Discount tag
            FRoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(FSizes.sm),
              backgroundColor: dark ? FColors.dark : FColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Imahe
                  const FRoundedImage(
                    imageUrl: FImagePaths.productImage7,
                    applyImageBorderRadius: true,
                  ),

                  /// Sale tag
                  Positioned(
                    top: 12,
                    child: FRoundedContainer(
                      borderRadius: FSizes.sm,
                      backgroundColor: FColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: FSizes.sm, vertical: FSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: FColors.black),
                      ),
                    ),
                  ),

                  /// Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: FCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: FSizes.spaceBtwItems / 2),

            /// ---Details
            const Padding(
              padding: EdgeInsets.only(left: FSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FProductTitleText(title: 'Green Nike Air Shoes'),
                  SizedBox(height: FSizes.spaceBtwItems / 2),
                  FBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: FSizes.sm),
                  child: Text('\$35.5', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headlineMedium,),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: FColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(FSizes.cardRadiusMd),
                      bottomRight: Radius.circular(FSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    height: FSizes.iconLg * 1.4,
                    width: FSizes.iconLg * 1.3,
                    child: Center(child: Icon(Iconsax.add, color: FColors.white,),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
