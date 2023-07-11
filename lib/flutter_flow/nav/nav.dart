import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomepageWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomepageWidget() : LoginWidget(),
          routes: [
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
              name: 'AccessPermision',
              path: 'accessPermision',
              builder: (context, params) => AccessPermisionWidget(),
            ),
            FFRoute(
              name: 'personalinfo',
              path: 'personalinfo',
              builder: (context, params) => PersonalinfoWidget(),
            ),
            FFRoute(
              name: 'Medicalinfo',
              path: 'medicalinfo',
              builder: (context, params) => MedicalinfoWidget(),
            ),
            FFRoute(
              name: 'MedicalInsuranceCard',
              path: 'medicalInsuranceCard',
              builder: (context, params) => MedicalInsuranceCardWidget(),
            ),
            FFRoute(
              name: 'uploadingId',
              path: 'uploadingId',
              builder: (context, params) => UploadingIdWidget(),
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
              name: 'Homepage',
              path: 'homepage',
              builder: (context, params) => HomepageWidget(),
            ),
            FFRoute(
              name: 'Addingnew',
              path: 'addingnew',
              builder: (context, params) => AddingnewWidget(),
            ),
            FFRoute(
              name: 'Ambulancescreen',
              path: 'ambulancescreen',
              builder: (context, params) => AmbulancescreenWidget(),
            ),
            FFRoute(
              name: 'Reportfirealert',
              path: 'reportfirealert',
              builder: (context, params) => ReportfirealertWidget(),
            ),
            FFRoute(
              name: 'EmergencyCall',
              path: 'emergencyCall',
              builder: (context, params) => EmergencyCallWidget(),
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
              name: 'Harassment',
              path: 'harassment',
              builder: (context, params) => HarassmentWidget(),
            ),
            FFRoute(
              name: 'others',
              path: 'others',
              builder: (context, params) => OthersWidget(),
            ),
            FFRoute(
              name: 'HostileSituation',
              path: 'hostileSituation',
              builder: (context, params) => HostileSituationWidget(),
            ),
            FFRoute(
              name: 'Armedperson',
              path: 'armedperson',
              builder: (context, params) => ArmedpersonWidget(),
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
              name: 'Profilesettings',
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
              builder: (context, params) => LivetrackWidget(),
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
              name: 'Donationpayment',
              path: 'donationpayment',
              builder: (context, params) => DonationpaymentWidget(),
            ),
            FFRoute(
              name: 'Alertmessage',
              path: 'alertmessage',
              builder: (context, params) => AlertmessageWidget(),
            ),
            FFRoute(
              name: 'editalertmessage',
              path: 'editalertmessage',
              builder: (context, params) => EditalertmessageWidget(),
            ),
            FFRoute(
              name: 'AlertDelay',
              path: 'alertDelay',
              builder: (context, params) => AlertDelayWidget(),
            ),
            FFRoute(
              name: 'AppSettings',
              path: 'appSettings',
              builder: (context, params) => AppSettingsWidget(),
            ),
            FFRoute(
              name: 'Security',
              path: 'security',
              builder: (context, params) => SecurityWidget(),
            ),
            FFRoute(
              name: 'Disableverification',
              path: 'disableverification',
              builder: (context, params) => DisableverificationWidget(),
            ),
            FFRoute(
              name: 'securityverification',
              path: 'securityverification',
              builder: (context, params) => SecurityverificationWidget(),
            ),
            FFRoute(
              name: 'Backupmail',
              path: 'backupmail',
              builder: (context, params) => BackupmailWidget(),
            ),
            FFRoute(
              name: 'passcode',
              path: 'passcode',
              builder: (context, params) => PasscodeWidget(),
            ),
            FFRoute(
              name: 'Resetpasscode',
              path: 'resetpasscode',
              builder: (context, params) => ResetpasscodeWidget(),
            ),
            FFRoute(
              name: 'Passwordentering',
              path: 'passwordentering',
              builder: (context, params) => PasswordenteringWidget(),
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
              name: 'Enteringcode',
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
              name: 'Timer',
              path: 'timer',
              builder: (context, params) => TimerWidget(),
            ),
            FFRoute(
              name: 'Triggerbutton',
              path: 'triggerbutton',
              builder: (context, params) => TriggerbuttonWidget(),
            ),
            FFRoute(
              name: 'Gesturetriggersettings',
              path: 'gesturetriggersettings',
              builder: (context, params) => GesturetriggersettingsWidget(),
            ),
            FFRoute(
              name: 'Triggeroptionselection',
              path: 'triggeroptionselection',
              builder: (context, params) => TriggeroptionselectionWidget(),
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
              name: 'VoiceActivation1',
              path: 'voiceActivation1',
              builder: (context, params) => VoiceActivation1Widget(),
            ),
            FFRoute(
              name: 'CustomVoiceActivation',
              path: 'customVoiceActivation',
              builder: (context, params) => CustomVoiceActivationWidget(),
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
              name: 'parentalcontrolsettings',
              path: 'parentalcontrolsettings',
              builder: (context, params) => ParentalcontrolsettingsWidget(),
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
              name: 'AlertDetail',
              path: 'alertDetail',
              builder: (context, params) => AlertDetailWidget(),
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
              name: 'PublicprofileVisibility',
              path: 'publicprofileVisibility',
              builder: (context, params) => PublicprofileVisibilityWidget(),
            ),
            FFRoute(
              name: 'profileEdit',
              path: 'profileEdit',
              builder: (context, params) => ProfileEditWidget(),
            ),
            FFRoute(
              name: 'Chatsettings',
              path: 'chatsettings',
              builder: (context, params) => ChatsettingsWidget(),
            ),
            FFRoute(
              name: 'SavedItems',
              path: 'savedItems',
              builder: (context, params) => SavedItemsWidget(),
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
              name: 'ChatsInChatSettings',
              path: 'chatsInChatSettings',
              builder: (context, params) => ChatsInChatSettingsWidget(),
            ),
            FFRoute(
              name: 'Lastseen',
              path: 'lastseen',
              builder: (context, params) => LastseenWidget(),
            ),
            FFRoute(
              name: 'StorageAnalyticsScreen',
              path: 'storageAnalyticsScreen',
              builder: (context, params) => StorageAnalyticsScreenWidget(),
            ),
            FFRoute(
              name: 'Media',
              path: 'media',
              builder: (context, params) => MediaWidget(),
            ),
            FFRoute(
              name: 'Volunteeringprofile1',
              path: 'volunteeringprofile1',
              builder: (context, params) => Volunteeringprofile1Widget(),
            ),
            FFRoute(
              name: 'VolunteerIDproof1',
              path: 'volunteerIDproof1',
              builder: (context, params) => VolunteerIDproof1Widget(),
            ),
            FFRoute(
              name: 'DataUsage',
              path: 'dataUsage',
              builder: (context, params) => DataUsageWidget(),
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
              name: 'FirstResponderCredentials',
              path: 'firstResponderCredentials',
              builder: (context, params) => FirstResponderCredentialsWidget(),
            ),
            FFRoute(
              name: 'FRCredentialsUploading',
              path: 'fRCredentialsUploading',
              builder: (context, params) => FRCredentialsUploadingWidget(),
            ),
            FFRoute(
              name: 'ResponderMainpage',
              path: 'responderMainpage',
              builder: (context, params) => ResponderMainpageWidget(),
            ),
            FFRoute(
              name: 'PersonalinfoResponder',
              path: 'personalinfoResponder',
              builder: (context, params) => PersonalinfoResponderWidget(),
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
            ),
            FFRoute(
              name: 'RejectReason',
              path: 'rejectReason',
              builder: (context, params) => RejectReasonWidget(),
            ),
            FFRoute(
              name: 'Direction',
              path: 'direction',
              builder: (context, params) => DirectionWidget(),
            ),
            FFRoute(
              name: 'Arrival',
              path: 'arrival',
              builder: (context, params) => ArrivalWidget(),
            ),
            FFRoute(
              name: 'GetDirection',
              path: 'getDirection',
              builder: (context, params) => GetDirectionWidget(),
            ),
            FFRoute(
              name: 'CloseIncident',
              path: 'closeIncident',
              builder: (context, params) => CloseIncidentWidget(),
            ),
            FFRoute(
              name: 'IncidentReport',
              path: 'incidentReport',
              builder: (context, params) => IncidentReportWidget(),
            ),
            FFRoute(
              name: 'NearestFacilities',
              path: 'nearestFacilities',
              builder: (context, params) => NearestFacilitiesWidget(),
            ),
            FFRoute(
              name: 'AmbulanceConfirmed',
              path: 'ambulanceConfirmed',
              builder: (context, params) => AmbulanceConfirmedWidget(),
            ),
            FFRoute(
              name: 'NearestFacilitespolice',
              path: 'nearestFacilitespolice',
              builder: (context, params) => NearestFacilitespoliceWidget(),
            ),
            FFRoute(
              name: 'FirehelpConfirmed',
              path: 'firehelpConfirmed',
              builder: (context, params) => FirehelpConfirmedWidget(),
            ),
            FFRoute(
              name: 'Responderpeerchat',
              path: 'responderpeerchat',
              builder: (context, params) => ResponderpeerchatWidget(),
            ),
            FFRoute(
              name: 'ChannelPublic',
              path: 'channelPublic',
              builder: (context, params) => ChannelPublicWidget(),
            ),
            FFRoute(
              name: 'ResponderEditProfile',
              path: 'responderEditProfile',
              builder: (context, params) => ResponderEditProfileWidget(),
            ),
            FFRoute(
              name: 'AlertHistory',
              path: 'alertHistory',
              builder: (context, params) => AlertHistoryWidget(),
            ),
            FFRoute(
              name: 'Dashboard',
              path: 'dashboard',
              builder: (context, params) => DashboardWidget(),
            ),
            FFRoute(
              name: 'ResponderSettings',
              path: 'responderSettings',
              builder: (context, params) => ResponderSettingsWidget(),
            ),
            FFRoute(
              name: 'ResponderDetailAlert',
              path: 'responderDetailAlert',
              builder: (context, params) => ResponderDetailAlertWidget(),
            ),
            FFRoute(
              name: 'ResponderWorkinghours',
              path: 'responderWorkinghours',
              builder: (context, params) => ResponderWorkinghoursWidget(),
            ),
            FFRoute(
              name: 'ShowMore',
              path: 'showMore',
              builder: (context, params) => ShowMoreWidget(),
            ),
            FFRoute(
              name: 'SocialChat',
              path: 'socialChat',
              builder: (context, params) => SocialChatWidget(),
            ),
            FFRoute(
              name: 'CreateChannel',
              path: 'createChannel',
              builder: (context, params) => CreateChannelWidget(),
            ),
            FFRoute(
              name: 'SocialChatOptions',
              path: 'socialChatOptions',
              builder: (context, params) => SocialChatOptionsWidget(),
            ),
            FFRoute(
              name: 'GroupChat',
              path: 'groupChat',
              builder: (context, params) => GroupChatWidget(),
            ),
            FFRoute(
              name: 'NewChat',
              path: 'newChat',
              builder: (context, params) => NewChatWidget(),
            ),
            FFRoute(
              name: 'NewGroup',
              path: 'newGroup',
              builder: (context, params) => NewGroupWidget(),
            ),
            FFRoute(
              name: 'AddingParticipant',
              path: 'addingParticipant',
              builder: (context, params) => AddingParticipantWidget(),
            ),
            FFRoute(
              name: 'AddingNewAdmin',
              path: 'addingNewAdmin',
              builder: (context, params) => AddingNewAdminWidget(),
            ),
            FFRoute(
              name: 'GroupAdded',
              path: 'groupAdded',
              builder: (context, params) => GroupAddedWidget(),
            ),
            FFRoute(
              name: 'DevOpsGroup',
              path: 'devOpsGroup',
              builder: (context, params) => DevOpsGroupWidget(),
            ),
            FFRoute(
              name: 'InviteLink',
              path: 'inviteLink',
              builder: (context, params) => InviteLinkWidget(),
            ),
            FFRoute(
              name: 'DirectMessage',
              path: 'directMessage',
              builder: (context, params) => DirectMessageWidget(),
            ),
            FFRoute(
              name: 'ChatInfo',
              path: 'chatInfo',
              builder: (context, params) => ChatInfoWidget(),
            ),
            FFRoute(
              name: 'CreatePoll',
              path: 'createPoll',
              builder: (context, params) => CreatePollWidget(),
            ),
            FFRoute(
              name: 'Createmockelection',
              path: 'createmockelection',
              builder: (context, params) => CreatemockelectionWidget(),
            ),
            FFRoute(
              name: 'sharemockelectionLink',
              path: 'sharemockelectionLink',
              builder: (context, params) => SharemockelectionLinkWidget(),
            ),
            FFRoute(
              name: 'postingpoll',
              path: 'postingpoll',
              builder: (context, params) => PostingpollWidget(),
            ),
            FFRoute(
              name: 'ShareorpostPoll',
              path: 'shareorpostPoll',
              builder: (context, params) => ShareorpostPollWidget(),
            ),
            FFRoute(
              name: 'NewMeetingInvite',
              path: 'newMeetingInvite',
              builder: (context, params) => NewMeetingInviteWidget(),
            ),
            FFRoute(
              name: 'ChatbatSupport',
              path: 'chatbatSupport',
              builder: (context, params) => ChatbatSupportWidget(),
            ),
            FFRoute(
              name: 'CallsandHistory',
              path: 'callsandHistory',
              builder: (context, params) => CallsandHistoryWidget(),
            ),
            FFRoute(
              name: 'SplashScreen',
              path: 'splashScreen',
              builder: (context, params) => SplashScreenWidget(),
            ),
            FFRoute(
              name: 'ElectionOTPverification',
              path: 'electionOTPverification',
              builder: (context, params) => ElectionOTPverificationWidget(),
            ),
            FFRoute(
              name: 'NomineeList',
              path: 'nomineeList',
              builder: (context, params) => NomineeListWidget(),
            ),
            FFRoute(
              name: 'CandidateDetailView',
              path: 'candidateDetailView',
              builder: (context, params) => CandidateDetailViewWidget(),
            ),
            FFRoute(
              name: 'JoiningMeeting',
              path: 'joiningMeeting',
              builder: (context, params) => JoiningMeetingWidget(),
            ),
            FFRoute(
              name: 'Voted',
              path: 'voted',
              builder: (context, params) => VotedWidget(),
            ),
            FFRoute(
              name: 'MeetingMain',
              path: 'meetingMain',
              builder: (context, params) => MeetingMainWidget(),
            ),
            FFRoute(
              name: 'MeetingType',
              path: 'meetingType',
              builder: (context, params) => MeetingTypeWidget(),
            ),
            FFRoute(
              name: 'MeetingDetails',
              path: 'meetingDetails',
              builder: (context, params) => MeetingDetailsWidget(),
            ),
            FFRoute(
              name: 'MeetingLink',
              path: 'meetingLink',
              builder: (context, params) => MeetingLinkWidget(),
            ),
            FFRoute(
              name: 'MeetingInvitation',
              path: 'meetingInvitation',
              builder: (context, params) => MeetingInvitationWidget(),
            ),
            FFRoute(
              name: 'CommonSearch',
              path: 'commonSearch',
              builder: (context, params) => CommonSearchWidget(),
            ),
            FFRoute(
              name: 'ResponderEdit',
              path: 'responderEdit',
              builder: (context, params) => ResponderEditWidget(),
            ),
            FFRoute(
              name: 'sample',
              path: 'sample',
              builder: (context, params) => SampleWidget(),
            ),
            FFRoute(
              name: 'postingpollCopy',
              path: 'postingpollCopy',
              builder: (context, params) => PostingpollCopyWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
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
    List<String>? collectionNamePath,
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: SvgPicture.asset(
                    'assets/images/bg.svg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

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
