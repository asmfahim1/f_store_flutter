import 'package:f_store_flutter/features/authentication/controllers/onboarding_controller.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';


class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return Positioned(
      top: FDeviceUtils.getAppBarHeight(),
      right: FSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnboardingController.instance.skipPage();
        },
        child: const Text('Skip',),
      ),
    );
  }
}