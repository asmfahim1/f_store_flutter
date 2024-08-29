import 'package:f_store_flutter/common/widgets/common_widget_image_texts/vertical_image_text.dart';
import 'package:f_store_flutter/utils/constants/image_paths.dart';
import 'package:flutter/material.dart';

class FHomeCategories extends StatelessWidget {
  const FHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return FVerticalImageText(
              image: FImagePaths.sportIcon,
              title: 'Sport Category',
              onPressed: () {},
            );
          }),
    );
  }
}