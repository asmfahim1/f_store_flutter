import 'package:f_store_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:f_store_flutter/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:f_store_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FPrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const FPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(child: Container(
      color: FColors.primaryColor,
      padding: EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: FCircularContainer(
                backgroundColor: FColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -300,
              child: FCircularContainer(
                backgroundColor: FColors.white.withOpacity(0.1),
              ),
            ),

          ],
        ),
      ),
    ),);
  }
}


