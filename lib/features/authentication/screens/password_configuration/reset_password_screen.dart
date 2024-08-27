import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                width: FHelperFunctions.screenWidth() * .6,
                image: const AssetImage(
                  FImagePaths.deliveredMailIllustration,
                ),
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections / 2,
              ),

              /// Title and SubTitle
              Text(
                FTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),
              Text(
                FTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.maxFinite,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text(FTexts.done)),
              ),

              const SizedBox(
                height: FSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.maxFinite,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(FTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
