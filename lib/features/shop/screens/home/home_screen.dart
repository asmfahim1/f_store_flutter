import 'package:f_store_flutter/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store_flutter/common/widgets/products_cart/product_card_vertical.dart';
import 'package:f_store_flutter/common/widgets/texts/section_heading.dart';
import 'package:f_store_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:f_store_flutter/features/shop/screens/home/widgets/home_horizontal_categories.dart';
import 'package:f_store_flutter/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Section with horizontal List view
            FPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Custom Appbar
                  const FHomeAppBar(),
                  const SizedBox(
                    height: FSizes.spaceBtwSections / 2,
                  ),

                  /// Search bar
                  FSearchContainer(
                    text: 'Search in Store',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: FSizes.spaceBtwSections / 2,
                  ),

                  /// Categories
                  const Padding(
                    padding: EdgeInsets.only(left: FSizes.defaultSpace),
                    child: Column(
                      children: [
                        FSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: FColors.white,
                        ),
                        SizedBox(
                          height: FSizes.spaceBtwItems,
                        ),

                        /// Categories
                        FHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body Section with categories
            Padding(
              padding: EdgeInsets.all(FSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  FPromoSlider(banners: [
                    FImagePaths.promoBanner1,
                    FImagePaths.promoBanner2,
                    FImagePaths.promoBanner3,
                  ]),
                  SizedBox(height: FSizes.spaceBtwSections / 2),

                  /// -- Popular Products
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: FSizes.gridViewSpacing,
                      crossAxisSpacing: FSizes.gridViewSpacing,
                      mainAxisExtent: 288,
                    ),
                    itemBuilder: (_, index) => FProductCardVertical(),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
