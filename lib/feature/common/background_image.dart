import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/app_image.dart';

class BGImage extends StatelessWidget {
  const BGImage({
    super.key,
    required this.child,
    this.fit,
    this.safeArea = true,
  });
  final Widget child;
  final StackFit? fit;
  final bool safeArea;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: fit ?? StackFit.expand,
      children: [
        SvgPicture.asset(
          AppImage.bg_svg,
          fit: BoxFit.cover,
        ),
        safeArea ? SafeArea(child: child) : child,
      ],
    );
  }
}