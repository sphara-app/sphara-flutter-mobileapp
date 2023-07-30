import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/app_image.dart';
import '../../../constant/size.dart';
import '../../../utils/router/routes.dart';
import '../../common/background_image.dart';
import '../../common/button_widget.dart';

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
              CustomOutlinedButton(
                onPressed: () {
                  context.pushNamed(
                    Routes.login,
                    queryParameters: {"isCivilian": "false"},
                  );
                },
                isExpanded: true,
                child: Text(
                  "First Responder",
                  style: FFTheme.of(context).titleMedium,
                ),
              ),
              const SizedBox(height: 20),
              CustomOutlinedButton(
                onPressed: () {
                  context.pushNamed(
                    Routes.login,
                    queryParameters: {"isCivilian": "true"},
                  );
                },
                isExpanded: true,
                child: Text(
                  "Civilian",
                  style: FFTheme.of(context).titleMedium,
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
