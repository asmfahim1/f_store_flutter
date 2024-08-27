import 'package:f_store_flutter/common/styles/spacing_styles.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                width: FHelperFunctions.screenWidth() * .6,
                image: AssetImage(
                  image,
                ),
              ),
              SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              /// Title and SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: FSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(FTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
