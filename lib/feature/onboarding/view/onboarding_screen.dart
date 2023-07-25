import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                            const Spacer(),

                            Image.asset(onboardingModel[index].imageUrl)
                                .animate(
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
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 20),
                            //   child: Column(
                            //     children: [
                            //       Text(
                            //         "titleLarge",
                            //         textAlign: TextAlign.center,
                            //         style: FFTheme.of(context).titleSmall,
                            //       ),
                            //       Text(
                            //         "'All your communication at one place',",
                            //         textAlign: TextAlign.center,
                            //         style: FFTheme.of(context).bodyMedium,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            const Spacer(),
                            const CheckListTile(
                              title: "Social media",
                              subtitle: "All your communication at one place",
                            ),
                            const CheckListTile(
                              title: "Channels",
                              subtitle:
                                  "Join public channels/groups and participate on \ncommunity discussions of your interest.",
                            ),
                            const CheckListTile(
                              title: "Direct messages",
                              subtitle:
                                  "Chat  tet-a-tet with members of your online community.",
                            ),
                            const CheckListTile(
                              title: "Private secured chat",
                              subtitle: "Securely chat/call via encryption",
                            ),
                            const Spacer(),
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
                        currentPage == onboardingModel.length - 1
                            ? TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Get Started'.toUpperCase(),
                                  style:
                                      FFTheme.of(context).bodyMedium.copyWith(
                                            color: FFTheme.of(context).primary,
                                          ),
                                ),
                              )
                            : TextButton(
                                onPressed: () {
                                  controller.animateToPage(
                                    onboardingModel.length - 1,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: Text(
                                  'Skip'.toUpperCase(),
                                  style:
                                      FFTheme.of(context).bodyMedium.copyWith(
                                            color: FFTheme.of(context).primary,
                                          ),
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

class CheckListTile extends StatelessWidget {
  const CheckListTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        AppImage.check,
        width: 20.0,
        height: 20.0,
        fit: BoxFit.cover,
      ),
      title: Text(
        title,
        style: FFTheme.of(context).titleSmall,
      ),
      subtitle: Text(
        subtitle,
        style: FFTheme.of(context).bodyMedium,
      ),
    );
  }
}
