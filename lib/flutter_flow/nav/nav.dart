import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/bg.svg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : OnBoardingScreensWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/bg.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : OnBoardingScreensWidget(),
          routes: [
            FFRoute(
              name: 'boardingPage',
              path: 'boardingPage',
              builder: (context, params) => BoardingPageWidget(),
            ),
            FFRoute(
              name: 'screen2',
              path: 'screen2',
              builder: (context, params) => Screen2Widget(),
            ),
            FFRoute(
              name: 'oneclick',
              path: 'oneclick',
              builder: (context, params) => OneclickWidget(),
            ),
            FFRoute(
              name: 'screen3',
              path: 'screen3',
              builder: (context, params) => Screen3Widget(),
            ),
            FFRoute(
              name: 'screen4',
              path: 'screen4',
              builder: (context, params) => Screen4Widget(),
            ),
            FFRoute(
              name: 'screen5',
              path: 'screen5',
              builder: (context, params) => Screen5Widget(),
            ),
            FFRoute(
              name: 'OnBoardingScreens',
              path: 'onBoardingScreens',
              builder: (context, params) => OnBoardingScreensWidget(),
            ),
            FFRoute(
              name: 'Choosingrole',
              path: 'choosingrole',
              builder: (context, params) => ChoosingroleWidget(),
            ),
            FFRoute(
              name: 'screen6',
              path: 'screen6',
              builder: (context, params) => Screen6Widget(),
            ),
            FFRoute(
              name: 'login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'signup',
              path: 'signup',
              builder: (context, params) => SignupWidget(),
            ),
            FFRoute(
              name: 'verificationcode',
              path: 'verificationcode',
              builder: (context, params) => VerificationcodeWidget(),
            ),
            FFRoute(
              name: 'verificationdone',
              path: 'verificationdone',
              builder: (context, params) => VerificationdoneWidget(),
            ),
            FFRoute(
              name: 'permissionalert',
              path: 'permissionalert',
              builder: (context, params) => PermissionalertWidget(),
            ),
            FFRoute(
              name: 'AccessPermision',
              path: 'accessPermision',
              builder: (context, params) => AccessPermisionWidget(),
            ),
            FFRoute(
              name: 'Personalinfo1',
              path: 'personalinfo1',
              builder: (context, params) => Personalinfo1Widget(),
            ),
            FFRoute(
              name: 'personalinfo2',
              path: 'personalinfo2',
              builder: (context, params) => Personalinfo2Widget(),
            ),
            FFRoute(
              name: 'Personalinfo3',
              path: 'personalinfo3',
              builder: (context, params) => Personalinfo3Widget(),
            ),
            FFRoute(
              name: 'uploadingId',
              path: 'uploadingId',
              builder: (context, params) => UploadingIdWidget(),
            ),
            FFRoute(
              name: 'Medicalinfo',
              path: 'medicalinfo',
              builder: (context, params) => MedicalinfoWidget(),
            ),
            FFRoute(
              name: 'uploadingidentification',
              path: 'uploadingidentification',
              builder: (context, params) => UploadingidentificationWidget(),
            ),
            FFRoute(
              name: 'IDuploaded',
              path: 'iDuploaded',
              builder: (context, params) => IDuploadedWidget(),
            ),
            FFRoute(
              name: 'EmergencyContacts',
              path: 'emergencyContacts',
              builder: (context, params) => EmergencyContactsWidget(),
            ),
            FFRoute(
              name: 'Addnew',
              path: 'addnew',
              builder: (context, params) => AddnewWidget(),
            ),
            FFRoute(
              name: 'Addingnew',
              path: 'addingnew',
              builder: (context, params) => AddingnewWidget(),
            ),
            FFRoute(
              name: 'Homepage',
              path: 'homepage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Homepage')
                  : HomepageWidget(),
            ),
            FFRoute(
              name: 'Ambulancescreen',
              path: 'ambulancescreen',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: AmbulancescreenWidget(),
              ),
            ),
            FFRoute(
              name: 'Reportfirealert',
              path: 'reportfirealert',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: ReportfirealertWidget(),
              ),
            ),
            FFRoute(
              name: 'Police',
              path: 'police',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: PoliceWidget(),
              ),
            ),
            FFRoute(
              name: 'emergencycall1',
              path: 'emergencycall1',
              builder: (context, params) => Emergencycall1Widget(),
            ),
            FFRoute(
              name: 'emergencycallcancel1',
              path: 'emergencycallcancel1',
              builder: (context, params) => Emergencycallcancel1Widget(),
            ),
            FFRoute(
              name: 'emergencycall2',
              path: 'emergencycall2',
              builder: (context, params) => Emergencycall2Widget(),
            ),
            FFRoute(
              name: 'emergencycallcancel2',
              path: 'emergencycallcancel2',
              builder: (context, params) => Emergencycallcancel2Widget(),
            ),
            FFRoute(
              name: 'emergency3',
              path: 'emergency3',
              builder: (context, params) => Emergency3Widget(),
            ),
            FFRoute(
              name: 'emergencycallcancel3',
              path: 'emergencycallcancel3',
              builder: (context, params) => Emergencycallcancel3Widget(),
            ),
            FFRoute(
              name: 'emergency4',
              path: 'emergency4',
              builder: (context, params) => Emergency4Widget(),
            ),
            FFRoute(
              name: 'emergencycallcancel4',
              path: 'emergencycallcancel4',
              builder: (context, params) => Emergencycallcancel4Widget(),
            ),
            FFRoute(
              name: 'Accident',
              path: 'accident',
              builder: (context, params) => AccidentWidget(),
            ),
            FFRoute(
              name: 'Robbery',
              path: 'robbery',
              builder: (context, params) => RobberyWidget(),
            ),
            FFRoute(
              name: 'Armedperson',
              path: 'armedperson',
              builder: (context, params) => ArmedpersonWidget(),
            ),
            FFRoute(
              name: 'Harassment',
              path: 'harassment',
              builder: (context, params) => HarassmentWidget(),
            ),
            FFRoute(
              name: 'HostileSituation',
              path: 'hostileSituation',
              builder: (context, params) => HostileSituationWidget(),
            ),
            FFRoute(
              name: 'others',
              path: 'others',
              builder: (context, params) => OthersWidget(),
            ),
            FFRoute(
              name: 'Homesettings',
              path: 'homesettings',
              builder: (context, params) => HomesettingsWidget(),
            ),
            FFRoute(
              name: 'panic',
              path: 'panic',
              builder: (context, params) => PanicWidget(),
            ),
            FFRoute(
              name: 'Subscription',
              path: 'subscription',
              builder: (context, params) => SubscriptionWidget(),
            ),
            FFRoute(
              name: 'profilesettings',
              path: 'profilesettings',
              builder: (context, params) => ProfilesettingsWidget(),
            ),
            FFRoute(
              name: 'Alarmraise',
              path: 'alarmraise',
              builder: (context, params) => AlarmraiseWidget(),
            ),
            FFRoute(
              name: 'alarmraise2',
              path: 'alarmraise2',
              builder: (context, params) => Alarmraise2Widget(),
            ),
            FFRoute(
              name: 'livetrack',
              path: 'livetrack',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'livetrack')
                  : LivetrackWidget(),
            ),
            FFRoute(
              name: 'unlocklivetracking',
              path: 'unlocklivetracking',
              builder: (context, params) => UnlocklivetrackingWidget(),
            ),
            FFRoute(
              name: 'unlocklivetracking1',
              path: 'unlocklivetracking1',
              builder: (context, params) => Unlocklivetracking1Widget(),
            ),
            FFRoute(
              name: 'unlocklivetracking2',
              path: 'unlocklivetracking2',
              builder: (context, params) => Unlocklivetracking2Widget(),
            ),
            FFRoute(
              name: 'Donation',
              path: 'donation',
              builder: (context, params) => DonationWidget(),
            ),
            FFRoute(
              name: 'Makedonation',
              path: 'makedonation',
              builder: (context, params) => MakedonationWidget(),
            ),
            FFRoute(
              name: 'Donated',
              path: 'donated',
              builder: (context, params) => DonatedWidget(),
            ),
            FFRoute(
              name: 'Access',
              path: 'access',
              builder: (context, params) => AccessWidget(),
            ),
            FFRoute(
              name: 'Donationapayment',
              path: 'donationapayment',
              builder: (context, params) => DonationapaymentWidget(),
            ),
            FFRoute(
              name: 'Alertmessage',
              path: 'alertmessage',
              builder: (context, params) => AlertmessageWidget(),
            ),
            FFRoute(
              name: 'AppSettings',
              path: 'appSettings',
              builder: (context, params) => AppSettingsWidget(),
            ),
            FFRoute(
              name: 'AlertDelay',
              path: 'alertDelay',
              builder: (context, params) => AlertDelayWidget(),
            ),
            FFRoute(
              name: 'editalertmessage',
              path: 'editalertmessage',
              builder: (context, params) => EditalertmessageWidget(),
            ),
            FFRoute(
              name: 'voiceativationphrase',
              path: 'voiceativationphrase',
              builder: (context, params) => VoiceativationphraseWidget(),
            ),
            FFRoute(
              name: 'SampleVoiceactivationoptions1',
              path: 'sampleVoiceactivationoptions1',
              builder: (context, params) =>
                  SampleVoiceactivationoptions1Widget(),
            ),
            FFRoute(
              name: 'SampleVoiceactivation2',
              path: 'sampleVoiceactivation2',
              builder: (context, params) => SampleVoiceactivation2Widget(),
            ),
            FFRoute(
              name: 'security',
              path: 'security',
              builder: (context, params) => SecurityWidget(),
            ),
            FFRoute(
              name: 'passcode',
              path: 'passcode',
              builder: (context, params) => PasscodeWidget(),
            ),
            FFRoute(
              name: 'phraseactivate',
              path: 'phraseactivate',
              builder: (context, params) => PhraseactivateWidget(),
            ),
            FFRoute(
              name: 'Backupmail',
              path: 'backupmail',
              builder: (context, params) => BackupmailWidget(),
            ),
            FFRoute(
              name: 'securityverification',
              path: 'securityverification',
              builder: (context, params) => SecurityverificationWidget(),
            ),
            FFRoute(
              name: 'Disableverification',
              path: 'disableverification',
              builder: (context, params) => DisableverificationWidget(),
            ),
            FFRoute(
              name: 'passwordentering',
              path: 'passwordentering',
              builder: (context, params) => PasswordenteringWidget(),
            ),
            FFRoute(
              name: 'Resetpasscode',
              path: 'resetpasscode',
              builder: (context, params) => ResetpasscodeWidget(),
            ),
            FFRoute(
              name: 'resendingcode',
              path: 'resendingcode',
              builder: (context, params) => ResendingcodeWidget(),
            ),
            FFRoute(
              name: 'confirmingcode',
              path: 'confirmingcode',
              builder: (context, params) => ConfirmingcodeWidget(),
            ),
            FFRoute(
              name: 'enteringcode',
              path: 'enteringcode',
              builder: (context, params) => EnteringcodeWidget(),
            ),
            FFRoute(
              name: 'Alarmdelay',
              path: 'alarmdelay',
              builder: (context, params) => AlarmdelayWidget(),
            ),
            FFRoute(
              name: 'Dialdelay',
              path: 'dialdelay',
              builder: (context, params) => DialdelayWidget(),
            ),
            FFRoute(
              name: 'SetTimer',
              path: 'setTimer',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'SetTimer')
                  : SetTimerWidget(),
            ),
            FFRoute(
              name: 'Triggerbutton',
              path: 'triggerbutton',
              builder: (context, params) => TriggerbuttonWidget(),
            ),
            FFRoute(
              name: 'Triggeroptionselection',
              path: 'triggeroptionselection',
              builder: (context, params) => TriggeroptionselectionWidget(),
            ),
            FFRoute(
              name: 'Gesturetriggersettings',
              path: 'gesturetriggersettings',
              builder: (context, params) => GesturetriggersettingsWidget(),
            ),
            FFRoute(
              name: 'Horizontalshake',
              path: 'horizontalshake',
              builder: (context, params) => HorizontalshakeWidget(),
            ),
            FFRoute(
              name: 'Verticalshake',
              path: 'verticalshake',
              builder: (context, params) => VerticalshakeWidget(),
            ),
            FFRoute(
              name: 'Nosignal',
              path: 'nosignal',
              builder: (context, params) => NosignalWidget(),
            ),
            FFRoute(
              name: 'Voiceactivation',
              path: 'voiceactivation',
              builder: (context, params) => VoiceactivationWidget(),
            ),
            FFRoute(
              name: 'Voiceactivationoptions',
              path: 'voiceactivationoptions',
              builder: (context, params) => VoiceactivationoptionsWidget(),
            ),
            FFRoute(
              name: 'VoiceActivation1',
              path: 'voiceActivation1',
              builder: (context, params) => VoiceActivation1Widget(),
            ),
            FFRoute(
              name: 'VoiceActivation2',
              path: 'voiceActivation2',
              builder: (context, params) => VoiceActivation2Widget(),
            ),
            FFRoute(
              name: 'VoiceActivation3',
              path: 'voiceActivation3',
              builder: (context, params) => VoiceActivation3Widget(),
            ),
            FFRoute(
              name: 'CustomVoiceActivation',
              path: 'customVoiceActivation',
              builder: (context, params) => CustomVoiceActivationWidget(),
            ),
            FFRoute(
              name: 'parentalcontrolsettings',
              path: 'parentalcontrolsettings',
              builder: (context, params) => ParentalcontrolsettingsWidget(),
            ),
            FFRoute(
              name: 'parentcontrolsubscription',
              path: 'parentcontrolsubscription',
              builder: (context, params) => ParentcontrolsubscriptionWidget(),
            ),
            FFRoute(
              name: 'parentalplansubscribed',
              path: 'parentalplansubscribed',
              builder: (context, params) => ParentalplansubscribedWidget(),
            ),
            FFRoute(
              name: 'whoisusing',
              path: 'whoisusing',
              builder: (context, params) => WhoisusingWidget(),
            ),
            FFRoute(
              name: 'Accountconnect',
              path: 'accountconnect',
              builder: (context, params) => AccountconnectWidget(),
            ),
            FFRoute(
              name: 'ParentalPinRecieve',
              path: 'parentalPinRecieve',
              builder: (context, params) => ParentalPinRecieveWidget(),
            ),
            FFRoute(
              name: 'ParentalSettings',
              path: 'parentalSettings',
              builder: (context, params) => ParentalSettingsWidget(),
            ),
            FFRoute(
              name: 'RestrictedSettings',
              path: 'restrictedSettings',
              builder: (context, params) => RestrictedSettingsWidget(),
            ),
            FFRoute(
              name: 'Alerts',
              path: 'alerts',
              builder: (context, params) => AlertsWidget(),
            ),
            FFRoute(
              name: 'AlertDetail',
              path: 'alertDetail',
              builder: (context, params) => AlertDetailWidget(),
            ),
            FFRoute(
              name: 'PrivacyControl',
              path: 'privacyControl',
              builder: (context, params) => PrivacyControlWidget(),
            ),
            FFRoute(
              name: 'privacyoptions',
              path: 'privacyoptions',
              builder: (context, params) => PrivacyoptionsWidget(),
            ),
            FFRoute(
              name: 'Chooselanguage',
              path: 'chooselanguage',
              builder: (context, params) => ChooselanguageWidget(),
            ),
            FFRoute(
              name: 'postvisibility',
              path: 'postvisibility',
              builder: (context, params) => PostvisibilityWidget(),
            ),
            FFRoute(
              name: 'post',
              path: 'post',
              builder: (context, params) => PostWidget(),
            ),
            FFRoute(
              name: 'profileEdit',
              path: 'profileEdit',
              builder: (context, params) => ProfileEditWidget(),
            ),
            FFRoute(
              name: 'PublicprofileVisibility',
              path: 'publicprofileVisibility',
              builder: (context, params) => PublicprofileVisibilityWidget(),
            ),
            FFRoute(
              name: 'SavedItems',
              path: 'savedItems',
              builder: (context, params) => SavedItemsWidget(),
            ),
            FFRoute(
              name: 'Chatsettings',
              path: 'chatsettings',
              builder: (context, params) => ChatsettingsWidget(),
            ),
            FFRoute(
              name: 'Notifications',
              path: 'notifications',
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: 'Notifications2',
              path: 'notifications2',
              builder: (context, params) => Notifications2Widget(),
            ),
            FFRoute(
              name: 'PrivacyAndControl',
              path: 'privacyAndControl',
              builder: (context, params) => PrivacyAndControlWidget(),
            ),
            FFRoute(
              name: 'Chats',
              path: 'chats',
              builder: (context, params) => ChatsWidget(),
            ),
            FFRoute(
              name: 'Lastseen',
              path: 'lastseen',
              builder: (context, params) => LastseenWidget(),
            ),
            FFRoute(
              name: 'Media',
              path: 'media',
              builder: (context, params) => MediaWidget(),
            ),
            FFRoute(
              name: 'StorageAnalyticsScreen',
              path: 'storageAnalyticsScreen',
              builder: (context, params) => StorageAnalyticsScreenWidget(),
            ),
            FFRoute(
              name: 'Social',
              path: 'social',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Social')
                  : SocialWidget(),
            ),
            FFRoute(
              name: 'DataUsage',
              path: 'dataUsage',
              builder: (context, params) => DataUsageWidget(),
            ),
            FFRoute(
              name: 'firehelp',
              path: 'firehelp',
              builder: (context, params) => FirehelpWidget(),
            ),
            FFRoute(
              name: 'ambulance',
              path: 'ambulance',
              builder: (context, params) => AmbulanceWidget(),
            ),
            FFRoute(
              name: 'VolunteerIDproof1',
              path: 'volunteerIDproof1',
              builder: (context, params) => VolunteerIDproof1Widget(),
            ),
            FFRoute(
              name: 'VolunteeringProfile',
              path: 'volunteeringProfile',
              builder: (context, params) => VolunteeringProfileWidget(),
            ),
            FFRoute(
              name: 'Volunteeringprofile1',
              path: 'volunteeringprofile1',
              builder: (context, params) => Volunteeringprofile1Widget(),
            ),
            FFRoute(
              name: 'VolunteerIDproof2',
              path: 'volunteerIDproof2',
              builder: (context, params) => VolunteerIDproof2Widget(),
            ),
            FFRoute(
              name: 'Verified',
              path: 'verified',
              builder: (context, params) => VerifiedWidget(),
            ),
            FFRoute(
              name: 'SocialMediaAccess',
              path: 'socialMediaAccess',
              builder: (context, params) => SocialMediaAccessWidget(),
            ),
            FFRoute(
              name: 'Suggestions',
              path: 'suggestions',
              builder: (context, params) => SuggestionsWidget(),
            ),
            FFRoute(
              name: 'WorkStationMenu',
              path: 'workStationMenu',
              builder: (context, params) => WorkStationMenuWidget(),
            ),
            FFRoute(
              name: 'Scriptbees',
              path: 'scriptbees',
              builder: (context, params) => ScriptbeesWidget(),
            ),
            FFRoute(
              name: 'Sample',
              path: 'sample',
              builder: (context, params) => SampleWidget(),
            ),
            FFRoute(
              name: 'Channel',
              path: 'channel',
              builder: (context, params) => ChannelWidget(),
            ),
            FFRoute(
              name: 'ScriptbeesCopy',
              path: 'scriptbeesCopy',
              builder: (context, params) => ScriptbeesCopyWidget(),
            ),
            FFRoute(
              name: 'ResponderMainpage',
              path: 'responderMainpage',
              builder: (context, params) => ResponderMainpageWidget(),
            ),
            FFRoute(
              name: 'IncomingCases',
              path: 'incomingCases',
              builder: (context, params) => IncomingCasesWidget(),
            ),
            FFRoute(
              name: 'Request',
              path: 'request',
              builder: (context, params) => RequestWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
