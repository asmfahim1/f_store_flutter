import 'package:f_store_flutter/common/widgets/appbar/appbar.dart';
import 'package:f_store_flutter/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FHomeAppBar extends StatelessWidget {
  const FHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.green),
          ),
          Text(
            FTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: FColors.white),
          ),
        ],
      ),
      actions: [
        FCartCounterIcon(onPressed: (){}, iconColor: FColors.white,),
      ],
    );
  }
}