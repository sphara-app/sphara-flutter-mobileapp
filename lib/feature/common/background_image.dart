import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/app_image.dart';

class BGImage extends StatelessWidget {
  const BGImage({
    super.key,
    required this.child,
    this.fit,
    this.safeArea = true,
    this.node,
  });
  final Widget child;
  final StackFit? fit;
  final bool safeArea;
  final FocusNode? node;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(node),
      child: Stack(
        fit: fit ?? StackFit.expand,
        children: [
          SvgPicture.asset(
            AppImage.bg_svg,
            fit: BoxFit.cover,
          ),
          safeArea ? SafeArea(child: child) : child,
        ],
      ),
    );
  }
}
