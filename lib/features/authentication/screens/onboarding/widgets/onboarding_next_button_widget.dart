import 'package:f_store_flutter/features/authentication/controllers/onboarding_controller.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/device/device_utility.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButtonWidget extends StatelessWidget {
  const OnboardingNextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Positioned(
      right: FSizes.defaultSpace,
      bottom: FDeviceUtils.getAppBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? FColors.primaryColor : FColors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}