import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sphara/utils/theme/theme.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.imageUrl,
    required this.title,
    // required this.subTitle,
    // required this.description,
  });
  final String imageUrl;
  final String title;
  // final String subTitle;
  // final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(imageUrl).animate(
          effects: [
            VisibilityEffect(duration: 1.ms),
            FadeEffect(
              curve: Curves.easeIn,
              delay: 0.ms,
              duration: 600.ms,
              begin: 0.0,
              end: 1.0,
            ),
            MoveEffect(
              curve: Curves.easeIn,
              delay: 0.ms,
              duration: 600.ms,
              begin: const Offset(-22.0, 0.0),
              end: const Offset(0.0, 0.0),
            ),
          ],
        ),
        // const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: FFTheme.of(context).titleSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
