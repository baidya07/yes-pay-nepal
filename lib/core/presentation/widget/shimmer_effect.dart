

import 'package:flutter/material.dart';

import '../resources/ui_assets.dart';


// Widget circularShimmerView({required double radius}) {
//   return CircleAvatar(
//     radius: radius,
//     backgroundImage: const ExactAssetImage(UIAssets.shimmerEffectGif),
//   );
// }

class ShimmerWidget extends StatelessWidget {
  final double? width, height, radius;

  const ShimmerWidget({this.width, this.height, this.radius, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 10),
        child: Image.asset(
          UIAssets.gifLoading,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
