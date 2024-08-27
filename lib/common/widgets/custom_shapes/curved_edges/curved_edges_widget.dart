import 'package:f_store_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidget extends StatelessWidget {
  final Widget? child;
  const CurvedEdgesWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FCustomCurverEdges(),
      child: child,
    );
  }
}