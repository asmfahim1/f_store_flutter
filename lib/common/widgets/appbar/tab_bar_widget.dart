import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:f_store_flutter/utils/device/device_utility.dart';
import 'package:f_store_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const FTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? FColors.black : FColors.white,
      child: TabBar(
        indicatorColor: FColors.primaryColor,
        unselectedLabelColor: FColors.darkGrey,
        labelColor: dark ? FColors.white : FColors.primaryColor,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}
