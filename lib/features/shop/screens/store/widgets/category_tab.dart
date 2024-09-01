import 'package:f_store_flutter/common/widgets/brands/brand_showcase.dart';
import 'package:f_store_flutter/common/widgets/layouts/grid_layout.dart';
import 'package:f_store_flutter/common/widgets/products_cart/product_card_vertical.dart';
import 'package:f_store_flutter/common/widgets/texts/section_heading.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class FCategoryTab extends StatelessWidget {
  const FCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const FBrandShowcase(images: [FImagePaths.productImage10,FImagePaths.productImage5,FImagePaths.productImage4,],),

              /// - - - Products
              FSectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
              SizedBox(height: FSizes.spaceBtwItems,),

              FGridLayout(itemCount: 4, itemBuilder: (_, index) => FProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
