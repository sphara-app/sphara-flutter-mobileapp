import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/app_image.dart';
import '../../../constant/size.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGImage(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: s20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImage.logo_dark_svg,
                width: 80.0,
                height: 80.0,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Are you a....",
                  style: FFTheme.of(context).titleMedium,
                ),
              ),
              const SizedBox(height: 80),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "First Responder",
                    style: FFTheme.of(context).titleMedium,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Civilian",
                    style: FFTheme.of(context).titleMedium,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

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
