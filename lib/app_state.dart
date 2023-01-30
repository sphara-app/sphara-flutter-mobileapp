import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _locationPermission =
        prefs.getBool('ff_locationPermission') ?? _locationPermission;
    _phonePermission = prefs.getBool('ff_phonePermission') ?? _phonePermission;
    _contactPermission =
        prefs.getBool('ff_contactPermission') ?? _contactPermission;
    _smsPermission = prefs.getBool('ff_smsPermission') ?? _smsPermission;
    _storagePermission =
        prefs.getBool('ff_storagePermission') ?? _storagePermission;
    _cameraPermission =
        prefs.getBool('ff_cameraPermission') ?? _cameraPermission;
    _microPhonePermission =
        prefs.getBool('ff_microPhonePermission') ?? _microPhonePermission;
    _appSettingPermission =
        prefs.getBool('ff_appSettingPermission') ?? _appSettingPermission;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _MenuSwitch = false;
  bool get MenuSwitch => _MenuSwitch;
  set MenuSwitch(bool _value) {
    _MenuSwitch = _value;
  }

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
