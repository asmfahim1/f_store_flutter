import 'package:f_store_flutter/common/widgets/success_screen/success_screen.dart';
import 'package:f_store_flutter/features/authentication/screens/login/login_screen.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
              color: FColors.grey,
            ),
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

              const SizedBox(height: FSizes.spaceBtwSections,),

              /// Title and SubTitle
              Text(FTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: FSizes.spaceBtwItems,),
              Text('support@asmlkc.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: FSizes.spaceBtwItems,),
              Text(FTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: FSizes.spaceBtwSections,),
              
              /// Buttons
              SizedBox(width: double.maxFinite, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(image: FImagePaths.staticSuccessIllustration, title: FTexts.yourAccountCreatedTitle, subTitle: FTexts.yourAccountCreatedSubTitle, onPressed: () => Get.to(()=> LoginScreen()),)), child: const Text(FTexts.tContinue)),),
              const SizedBox(height: FSizes.spaceBtwItems,),
              SizedBox(width: double.maxFinite, child: TextButton(onPressed: (){}, child: const Text(FTexts.resendEmail)),),
            ],
          ),
        ),
      ),
    );
  }
}
