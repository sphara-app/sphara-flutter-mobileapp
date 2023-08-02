import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sphara/feature/verification/view/verification_screen.dart';
import 'package:sphara/utils/router/routes.dart';
import 'package:sphara/utils/string_extension.dart';

import '../../constant/app_shared_pref.dart';
import '../../feature/choose_role/view/choose_role.dart';
import '../../feature/login/view/login_screen.dart';
import '../../feature/onboarding/view/onboarding_screen.dart';
import '../../feature/signup/view/signup_screen.dart';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  // BaseAuthUser? initialUser;
  // BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  bool notifyOnAuthChange = true;

  // bool get loading => user == null || showSplashImage;
  // bool get loggedIn => user?.loggedIn ?? false;
  // bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  // bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: "/",
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      // errorBuilder: (context, state) => appStateNotifier.loggedIn
      //     ? HomepageWidget()
      //     : OnBoardingScreensWidget(),
      routes: [
        GoRoute(
          name: Routes.splashScreen,
          path: '/',
          builder: (context, state) {
            // return const SplashScreen();
            return const ChooseRole();
          },
          redirect: (context, state) async {
            final SharedPreferences pref =
                await SharedPreferences.getInstance();
            final isOnBoarded = pref.getBool(SPref.isOnBoarded) ?? false;
            // print(isOnBoarded);
            if (isOnBoarded) {
              return null;
            } else {
              return Routes.onBoardingScreen.addPath();
            }
          },
        ),
        GoRoute(
          name: Routes.onBoardingScreen,
          path: Routes.onBoardingScreen.addPath(),
          builder: (context, state) {
            return const OnboardingScreen();
          },
        ),
        GoRoute(
          name: Routes.chooseRole,
          path: Routes.chooseRole.addPath(),
          builder: (context, state) {
            return const ChooseRole();
          },
        ),
        GoRoute(
          name: Routes.login,
          path: Routes.login.addPath(),
          builder: (context, state) {
            bool isCivilian = state.uri.queryParameters["isCivilian"] == "true"
                ? true
                : false;
            return LoginScreen(isFromCivilian: isCivilian);
          },
        ),
        GoRoute(
          name: Routes.signUp,
          path: Routes.signUp.addPath(),
          builder: (context, state) {
            bool isCivilian = state.uri.queryParameters["isCivilian"] == "true"
                ? true
                : false;
            return SignUpScreen(isFromCivilian: isCivilian);
          },
        ),
        GoRoute(
          name: Routes.verificationCode,
          path: Routes.verificationCode.addPath(),
          builder: (context, state) {
            return const VerificationScreen();
          },
        ),

        // FFRoute(
        //   name: '_initialize',
        //   path: '/',
        //   builder: (context, _) => appStateNotifier.loggedIn
        //       ? HomepageWidget()
        //       : OnBoardingScreensWidget(),
        //   routes: [
        //     FFRoute(
        //       name: 'OnBoardingScreens',
        //       path: 'onBoardingScreens',
        //       builder: (context, params) => OnBoardingScreensWidget(),
        //     ),
        //     FFRoute(
        //       name: 'Choosingrole',
        //       path: 'choosingrole',
        //       builder: (context, params) => ChoosingroleWidget(),
        //     ),
        //     FFRoute(
        //       name: 'login',
        //       path: 'login',
        //       builder: (context, params) => LoginWidget(),
        //     ),
        //     FFRoute(
        //       name: 'signup',
        //       path: 'signup',
        //       builder: (context, params) => SignupWidget(),
        //     ),
        //     FFRoute(
        //       name: 'verificationcode',
        //       path: 'verificationcode',
        //       builder: (context, params) => VerificationcodeWidget(),
        //     ),

        //   ].map((r) => r.toRoute(appStateNotifier)).toList(),
        // ),
      ],
    );
