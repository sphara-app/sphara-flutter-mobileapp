import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _locationPermission =
          prefs.getBool('ff_locationPermission') ?? _locationPermission;
    });
    _safeInit(() {
      _phonePermission =
          prefs.getBool('ff_phonePermission') ?? _phonePermission;
    });
    _safeInit(() {
      _contactPermission =
          prefs.getBool('ff_contactPermission') ?? _contactPermission;
    });
    _safeInit(() {
      _smsPermission = prefs.getBool('ff_smsPermission') ?? _smsPermission;
    });
    _safeInit(() {
      _storagePermission =
          prefs.getBool('ff_storagePermission') ?? _storagePermission;
    });
    _safeInit(() {
      _cameraPermission =
          prefs.getBool('ff_cameraPermission') ?? _cameraPermission;
    });
    _safeInit(() {
      _microPhonePermission =
          prefs.getBool('ff_microPhonePermission') ?? _microPhonePermission;
    });
    _safeInit(() {
      _appSettingPermission =
          prefs.getBool('ff_appSettingPermission') ?? _appSettingPermission;
    });
    _safeInit(() {
      _codeName = prefs.getString('ff_codeName') ?? _codeName;
    });
    _safeInit(() {
      _responderMode = prefs.getBool('ff_responderMode') ?? _responderMode;
    });
    _safeInit(() {
      _socialMode = prefs.getBool('ff_socialMode') ?? _socialMode;
    });
    _safeInit(() {
      _isonboarded = prefs.getBool('ff_isonboarded') ?? _isonboarded;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _socialMedia = false;
  bool get socialMedia => _socialMedia;
  set socialMedia(bool _value) {
    _socialMedia = _value;
  }

  bool _locationPermission = false;
  bool get locationPermission => _locationPermission;
  set locationPermission(bool _value) {
    _locationPermission = _value;
    prefs.setBool('ff_locationPermission', _value);
  }

  bool _phonePermission = false;
  bool get phonePermission => _phonePermission;
  set phonePermission(bool _value) {
    _phonePermission = _value;
    prefs.setBool('ff_phonePermission', _value);
  }

  bool _contactPermission = false;
  bool get contactPermission => _contactPermission;
  set contactPermission(bool _value) {
    _contactPermission = _value;
    prefs.setBool('ff_contactPermission', _value);
  }

  bool _smsPermission = false;
  bool get smsPermission => _smsPermission;
  set smsPermission(bool _value) {
    _smsPermission = _value;
    prefs.setBool('ff_smsPermission', _value);
  }

  bool _storagePermission = false;
  bool get storagePermission => _storagePermission;
  set storagePermission(bool _value) {
    _storagePermission = _value;
    prefs.setBool('ff_storagePermission', _value);
  }

  bool _cameraPermission = false;
  bool get cameraPermission => _cameraPermission;
  set cameraPermission(bool _value) {
    _cameraPermission = _value;
    prefs.setBool('ff_cameraPermission', _value);
  }

  bool _microPhonePermission = false;
  bool get microPhonePermission => _microPhonePermission;
  set microPhonePermission(bool _value) {
    _microPhonePermission = _value;
    prefs.setBool('ff_microPhonePermission', _value);
  }

  bool _appSettingPermission = false;
  bool get appSettingPermission => _appSettingPermission;
  set appSettingPermission(bool _value) {
    _appSettingPermission = _value;
    prefs.setBool('ff_appSettingPermission', _value);
  }

  int _timerValue = 0;
  int get timerValue => _timerValue;
  set timerValue(int _value) {
    _timerValue = _value;
  }

  bool _timerRunning = false;
  bool get timerRunning => _timerRunning;
  set timerRunning(bool _value) {
    _timerRunning = _value;
  }

  bool _isTopSutter = true;
  bool get isTopSutter => _isTopSutter;
  set isTopSutter(bool _value) {
    _isTopSutter = _value;
  }

  String _countryCode = '1';
  String get countryCode => _countryCode;
  set countryCode(String _value) {
    _countryCode = _value;
  }

  DateTime? _finishTimer;
  DateTime? get finishTimer => _finishTimer;
  set finishTimer(DateTime? _value) {
    _finishTimer = _value;
  }

  bool _timerPaused = false;
  bool get timerPaused => _timerPaused;
  set timerPaused(bool _value) {
    _timerPaused = _value;
  }

  bool _registedV = false;
  bool get registedV => _registedV;
  set registedV(bool _value) {
    _registedV = _value;
  }

  bool _SocialAccount = false;
  bool get SocialAccount => _SocialAccount;
  set SocialAccount(bool _value) {
    _SocialAccount = _value;
  }

  bool _securityVerificationToggle = false;
  bool get securityVerificationToggle => _securityVerificationToggle;
  set securityVerificationToggle(bool _value) {
    _securityVerificationToggle = _value;
  }

  bool _settings = false;
  bool get settings => _settings;
  set settings(bool _value) {
    _settings = _value;
  }

  bool _socialSwitch = false;
  bool get socialSwitch => _socialSwitch;
  set socialSwitch(bool _value) {
    _socialSwitch = _value;
  }

  bool _subscription = false;
  bool get subscription => _subscription;
  set subscription(bool _value) {
    _subscription = _value;
  }

  List<String> _countryNameListAppSate = [];
  List<String> get countryNameListAppSate => _countryNameListAppSate;
  set countryNameListAppSate(List<String> _value) {
    _countryNameListAppSate = _value;
  }

  void addToCountryNameListAppSate(String _value) {
    _countryNameListAppSate.add(_value);
  }

  void removeFromCountryNameListAppSate(String _value) {
    _countryNameListAppSate.remove(_value);
  }

  void removeAtIndexFromCountryNameListAppSate(int _index) {
    _countryNameListAppSate.removeAt(_index);
  }

  void updateCountryNameListAppSateAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _countryNameListAppSate[_index] = updateFn(_countryNameListAppSate[_index]);
  }

  bool _channelSwitch = false;
  bool get channelSwitch => _channelSwitch;
  set channelSwitch(bool _value) {
    _channelSwitch = _value;
  }

  String _codeName = '';
  String get codeName => _codeName;
  set codeName(String _value) {
    _codeName = _value;
    prefs.setString('ff_codeName', _value);
  }

  List<String> _civilianMenu = ['Home', 'I\'m Here', 'Timer', 'Social'];
  List<String> get civilianMenu => _civilianMenu;
  set civilianMenu(List<String> _value) {
    _civilianMenu = _value;
  }

  void addToCivilianMenu(String _value) {
    _civilianMenu.add(_value);
  }

  void removeFromCivilianMenu(String _value) {
    _civilianMenu.remove(_value);
  }

  void removeAtIndexFromCivilianMenu(int _index) {
    _civilianMenu.removeAt(_index);
  }

  void updateCivilianMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _civilianMenu[_index] = updateFn(_civilianMenu[_index]);
  }

  String _civilianActiveItem = 'Home';
  String get civilianActiveItem => _civilianActiveItem;
  set civilianActiveItem(String _value) {
    _civilianActiveItem = _value;
  }

  bool _responderMode = false;
  bool get responderMode => _responderMode;
  set responderMode(bool _value) {
    _responderMode = _value;
    prefs.setBool('ff_responderMode', _value);
  }

  bool _socialMode = false;
  bool get socialMode => _socialMode;
  set socialMode(bool _value) {
    _socialMode = _value;
    prefs.setBool('ff_socialMode', _value);
  }

  List<String> _socialMenu = ['Channels', 'Chats', 'Meetings', 'More'];
  List<String> get socialMenu => _socialMenu;
  set socialMenu(List<String> _value) {
    _socialMenu = _value;
  }

  void addToSocialMenu(String _value) {
    _socialMenu.add(_value);
  }

  void removeFromSocialMenu(String _value) {
    _socialMenu.remove(_value);
  }

  void removeAtIndexFromSocialMenu(int _index) {
    _socialMenu.removeAt(_index);
  }

  void updateSocialMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _socialMenu[_index] = updateFn(_socialMenu[_index]);
  }

  String _SocialActiveItem = 'Channels';
  String get SocialActiveItem => _SocialActiveItem;
  set SocialActiveItem(String _value) {
    _SocialActiveItem = _value;
  }

  List<String> _responderMenu = ['Home', 'Nearby', 'Call backup', 'Peer chat'];
  List<String> get responderMenu => _responderMenu;
  set responderMenu(List<String> _value) {
    _responderMenu = _value;
  }

  void addToResponderMenu(String _value) {
    _responderMenu.add(_value);
  }

  void removeFromResponderMenu(String _value) {
    _responderMenu.remove(_value);
  }

  void removeAtIndexFromResponderMenu(int _index) {
    _responderMenu.removeAt(_index);
  }

  void updateResponderMenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _responderMenu[_index] = updateFn(_responderMenu[_index]);
  }

  String _responderActiveItem = 'Home';
  String get responderActiveItem => _responderActiveItem;
  set responderActiveItem(String _value) {
    _responderActiveItem = _value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  List<String> _chatAttach = [
    'Documents',
    'Gallery',
    'Audio',
    'Contacts',
    'Location',
    'Poll'
  ];
  List<String> get chatAttach => _chatAttach;
  set chatAttach(List<String> _value) {
    _chatAttach = _value;
  }

  void addToChatAttach(String _value) {
    _chatAttach.add(_value);
  }

  void removeFromChatAttach(String _value) {
    _chatAttach.remove(_value);
  }

  void removeAtIndexFromChatAttach(int _index) {
    _chatAttach.removeAt(_index);
  }

  void updateChatAttachAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _chatAttach[_index] = updateFn(_chatAttach[_index]);
  }

  bool _isonboarded = false;
  bool get isonboarded => _isonboarded;
  set isonboarded(bool _value) {
    _isonboarded = _value;
    prefs.setBool('ff_isonboarded', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
