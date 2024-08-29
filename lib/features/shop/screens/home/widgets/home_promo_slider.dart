import 'package:carousel_slider/carousel_slider.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:f_store_flutter/common/widgets/images/rounded_images.dart';
import 'package:f_store_flutter/features/shop/controllers/home_controller.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FPromoSlider extends StatelessWidget {
  final List<String> banners;

  const FPromoSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        /*ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 150),
          child: CarouselView(
            itemExtent: double.maxFinite,
            shrinkExtent: 200,
            children: List<Widget>.generate(
              5,
              (int index) {
                return FRoundedImage(
                  imageUrl: FImagePaths.promoBanner1,
                );
              },
            ),
          ),
        ),*/
        CarouselSlider(
          items: banners.map((urls) => FRoundedImage(imageUrl: urls)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: FSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                FCircularContainer(
                  height: 3,
                  width: 16,
                  margin: const EdgeInsets.only(right: FSizes.defaultSpace),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? FColors.primaryColor
                      : FColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
