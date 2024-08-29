import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FCartCounterIcon extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;
  const FCartCounterIcon({
    super.key, this.iconColor, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: FHelperFunctions.isDarkMode(context) ? FColors.white.withOpacity(0.6) : FColors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelMedium!.apply(color: FColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        ),
      ],
    );
  }
}