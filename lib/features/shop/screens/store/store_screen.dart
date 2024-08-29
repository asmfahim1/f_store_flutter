import 'package:f_store_flutter/common/widgets/appbar/appbar.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store_flutter/common/widgets/images/f_circular_image.dart';
import 'package:f_store_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:f_store_flutter/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:f_store_flutter/common/widgets/texts/f_brand_title_text_with_verified_icon.dart';
import 'package:f_store_flutter/common/widgets/texts/section_heading.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/enums.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                expandedHeight: 430,
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

                      FGridLayout(itemCount: 4, mainAxisExtent: 70, itemBuilder: (_, index){
                        return GestureDetector(
                          onTap: (){},
                          child: FRoundedContainer(
                            padding: const EdgeInsets.all(FSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// Icon
                                Flexible(
                                  child: FCircularImage(
                                    image: FImagePaths.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: FHelperFunctions.isDarkMode(context)
                                        ? FColors.white
                                        : FColors.black,
                                  ),
                                ),
                                const SizedBox(width: FSizes.spaceBtwItems / 2,),


                                /// Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const FBrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.LARGE,),
                                      Text('256 products', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
