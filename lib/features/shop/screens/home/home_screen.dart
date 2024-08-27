import 'package:f_store_flutter/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:f_store_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Custom Appbar
                  FHomeAppBar(),
                  SizedBox(height: FSizes.spaceBtwSections,),

                  /// Search bar
                  FSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: FSizes.spaceBtwSections,),

                  /// Categories

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




