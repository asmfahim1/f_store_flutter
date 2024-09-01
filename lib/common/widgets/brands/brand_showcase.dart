import 'package:f_store_flutter/common/widgets/brands/brand_card.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FBrandShowcase extends StatelessWidget {
  final List<String> images;

  const FBrandShowcase({
    super.key, required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return FRoundedContainer(
      showBorder: true,
      borderColor: FColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(FSizes.md),
      margin: const EdgeInsets.only(bottom: FSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Product count
          const FBrandCard(showBorder: false),

          /// Brand Top 3 Product Images
          Row(
            children: images.map((image) => brandTapProductImageWidget(image, context)).toList(),
          ),

        ],
      ),
    );
  }

  Widget brandTapProductImageWidget (String image, context) {
    return Expanded(
      child: FRoundedContainer(
        height: 100,
        backgroundColor: FHelperFunctions.isDarkMode(context) ? FColors.darkGrey : FColors.light,
        margin: const EdgeInsets.only(right: FSizes.sm),
        padding: const EdgeInsets.all(FSizes.md),
        child: Image(fit: BoxFit.cover, image: AssetImage(image),),
      ),
    );
  }
}