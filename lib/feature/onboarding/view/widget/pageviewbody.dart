import 'package:flutter/cupertino.dart';
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
        Image.asset(imageUrl),
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
