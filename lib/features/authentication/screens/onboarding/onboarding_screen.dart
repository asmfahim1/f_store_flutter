import 'package:f_store_flutter/features/authentication/controllers/onboarding_controller.dart';
import 'package:f_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_next_button_widget.dart';
import 'package:f_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_page_indicator.dart';
import 'package:f_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_page_widget.dart';
import 'package:f_store_flutter/features/authentication/screens/onboarding/widgets/onboarding_skip_button_widget.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: onboardingController.updatePageIndicator,
            children: const [
              OnboardingPageWidget(
                image: FImagePaths.onboardingImage1,
                title: FTexts.onBoardingTitle1,
                subTitle: FTexts.onBoardingSubTitle1,
              ),
              OnboardingPageWidget(
                image: FImagePaths.onboardingImage2,
                title: FTexts.onBoardingTitle2,
                subTitle: FTexts.onBoardingSubTitle2,
              ),
              OnboardingPageWidget(
                image: FImagePaths.onboardingImage3,
                title: FTexts.onBoardingTitle3,
                subTitle: FTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          const SkipButtonWidget(),

          const SmoothPageIndicatorWidget(),

          const OnboardingNextButtonWidget(),
        ],
      ),
    );
  }
}
