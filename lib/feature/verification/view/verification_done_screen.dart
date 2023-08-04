import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sphara/constant/app_image.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/size.dart';
import '../../common/background_image.dart';
import '../../common/button_widget.dart';

class VerificationDone extends StatelessWidget {
  const VerificationDone({super.key});

  @override
  Widget build(BuildContext context) {
    final unfocusNode = FocusNode();
    return Scaffold(
        body: BGImage(
      node: unfocusNode,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: s20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(AppImage.sms_verification)).animate(
              effects: [
                VisibilityEffect(duration: 1.ms),
                FadeEffect(
                  curve: Curves.easeInOut,
                  delay: 0.ms,
                  duration: 600.ms,
                  begin: 0.0,
                  end: 1.0,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            Text(
              'Thank You!',
              style: FFTheme.of(context).titleMedium.copyWith(
                    fontFamily: FFTheme.of(context).titleMediumFamily,
                    color: FFTheme.of(context).secondary,
                  ),
            ),
            Text(
              'Your phone number has been verified\nsuccessfully.',
              textAlign: TextAlign.center,
              style: FFTheme.of(context).bodyMedium.copyWith(
                    fontFamily: FFTheme.of(context).bodyMediumFamily,
                    color: FFTheme.of(context).tertiary,
                  ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
            CustomOutlinedButton(
              onPressed: () {
                // TODO: Navigate to Access Permission Screen
                // context.goNamed(Routes.verificationDone);
              },
              isExpanded: true,
              backgroundColor: FFTheme.of(context).primary,
              child: Text(
                "CONTINUE TO PROFILE".toUpperCase(),
                style: FFTheme.of(context).headlineSmall,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
