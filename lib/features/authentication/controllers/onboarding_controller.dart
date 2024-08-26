import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  ///variables
  PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex = index;
  }

  ///Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index and jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2) {
      //Get.to(LoginScreen());
    } else {
      currentPageIndex.value = currentPageIndex.value + 1;
        pageController.jumpToPage(currentPageIndex.value);
    }
  }

  /// Update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
