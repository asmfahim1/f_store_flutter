import 'package:f_store_flutter/common/widgets/appbar/appbar.dart';
import 'package:f_store_flutter/common/widgets/appbar/tab_bar_widget.dart';
import 'package:f_store_flutter/common/widgets/brands/brand_card.dart';
import 'package:f_store_flutter/common/widgets/brands/brand_showcase.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:f_store_flutter/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:f_store_flutter/common/widgets/texts/section_heading.dart';
import 'package:f_store_flutter/features/shop/screens/store/widgets/category_tab.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: FAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            FCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: FHelperFunctions.isDarkMode(context)
                    ? FColors.black
                    : FColors.white,
                expandedHeight: 400,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(FSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: FSizes.spaceBtwItems),
                      FSearchContainer(
                        text: 'Search in Store ',
                        onTap: () {},
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: FSizes.spaceBtwSections / 2,
                      ),

                      /// Feature Brands
                      FSectionHeading(
                        title: 'Features Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: FSizes.spaceBtwItems / 2,
                      ),

                      FGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 70,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: const FBrandCard(showBorder: true),
                            );
                          })
                    ],
                  ),
                ),

                /// Tabs -- Tutorial
                bottom: const FTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Cloths'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

