import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class FLoginSocialButtonsWidget extends StatelessWidget {
  const FLoginSocialButtonsWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? FColors.primaryColor : FColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: FSizes.iconLg,
              width: FSizes.iconLg,
              image: AssetImage(
                FImagePaths.googleLogo,
              ),
            ),
          ),
        ),

        const SizedBox(width: FSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? FColors.primaryColor : FColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: FSizes.iconLg,
              width: FSizes.iconLg,
              image: AssetImage(
                FImagePaths.facebookLogo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}