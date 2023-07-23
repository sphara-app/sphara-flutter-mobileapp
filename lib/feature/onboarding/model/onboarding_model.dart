import '../../../constant/app_image.dart';

class OnboardingModel {
  final String imageUrl;
  final String title;

  OnboardingModel({
    required this.imageUrl,
    required this.title,
  });
}

List<OnboardingModel> onboardingModel = [
  OnboardingModel(
    imageUrl: AppImage.onboarding_1,
    title: 'Often feel vulnerable when you\nare alone?',
  ),
  OnboardingModel(
    imageUrl: AppImage.onboarding_2,
    title:
        'Ensure your safety in unsafe\ncircumstances by ON-HAND\nemergency Button at all times',
  ),
  OnboardingModel(
    imageUrl: AppImage.onboarding_3,
    title: 'SHAKE  IT gesture to save you\nfrom the hassle of unlocking',
  ),
  OnboardingModel(
    imageUrl: AppImage.onboarding_4,
    title:
        'Can integrate with the social\nmedia applications to broaden\nyour security network',
  ),
  OnboardingModel(
    imageUrl: AppImage.onboarding_5,
    title:
        'Use voice recognition to contact\nhelp even when you can\'t reach\nyour phone',
  ),
  OnboardingModel(
    imageUrl: AppImage.onboarding_6,
    title: "Get Started Today",
  ),
];
