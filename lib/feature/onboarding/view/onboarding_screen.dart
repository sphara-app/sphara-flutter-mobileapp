import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/app_image.dart';
import '../model/onboarding_model.dart';
import 'widget/pageviewbody.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            AppImage.bg_svg,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: onboardingModel.length,
                          effect: ExpandingDotsEffect(
                            dotHeight: 12,
                            dotWidth: 12,
                            activeDotColor: FFTheme.of(context).primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: onboardingModel.length,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemBuilder: (BuildContext context, index) {
                      if (index == onboardingModel.length - 1) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(onboardingModel[index].imageUrl),
                            // const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "titleLarge",
                                    textAlign: TextAlign.center,
                                    // style: TextStyleHelper.t24b700(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                      return PageViewBody(
                        imageUrl: onboardingModel[index].imageUrl,
                        title: onboardingModel[index].title,
                        // description: onboardingModel[index].description,
                        // subTitle: onboardingModel[index].subTitle,
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip'.toUpperCase(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
