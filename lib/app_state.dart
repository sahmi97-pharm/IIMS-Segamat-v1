import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _mySelectedWards =
          prefs.getStringList('ff_mySelectedWards') ?? _mySelectedWards;
    });
    _safeInit(() {
      _isPushEnabled = prefs.getBool('ff_isPushEnabled') ?? _isPushEnabled;
    });
    _safeInit(() {
      _isSoundEnabled = prefs.getBool('ff_isSoundEnabled') ?? _isSoundEnabled;
    });
    _safeInit(() {
      _currentWardUnitName =
          prefs.getString('ff_currentWardUnitName') ?? _currentWardUnitName;
    });
    _safeInit(() {
      _selectedType = prefs.getString('ff_selectedType') ?? _selectedType;
    });
    _safeInit(() {
      _lastRegistrationTime = prefs.containsKey('ff_lastRegistrationTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_lastRegistrationTime')!)
          : _lastRegistrationTime;
    });
    _safeInit(() {
      _showRegistrationSuccess = prefs.getBool('ff_showRegistrationSuccess') ??
          _showRegistrationSuccess;
    });
    _safeInit(() {
      _registeredWadName =
          prefs.getString('ff_registeredWadName') ?? _registeredWadName;
    });
    _safeInit(() {
      _fcmToken = prefs.getString('ff_fcmToken') ?? _fcmToken;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _FilterTypeDashboard = '';
  String get FilterTypeDashboard => _FilterTypeDashboard;
  set FilterTypeDashboard(String value) {
    _FilterTypeDashboard = value;
  }

  String _TrolleyStatus = '';
  String get TrolleyStatus => _TrolleyStatus;
  set TrolleyStatus(String value) {
    _TrolleyStatus = value;
  }

  String _globalActiveWard = '';
  String get globalActiveWard => _globalActiveWard;
  set globalActiveWard(String value) {
    _globalActiveWard = value;
  }

  String _globalActiveType = '';
  String get globalActiveType => _globalActiveType;
  set globalActiveType(String value) {
    _globalActiveType = value;
  }

  List<String> _mySelectedWards = [];
  List<String> get mySelectedWards => _mySelectedWards;
  set mySelectedWards(List<String> value) {
    _mySelectedWards = value;
    prefs.setStringList('ff_mySelectedWards', value);
  }

  void addToMySelectedWards(String value) {
    mySelectedWards.add(value);
    prefs.setStringList('ff_mySelectedWards', _mySelectedWards);
  }

  void removeFromMySelectedWards(String value) {
    mySelectedWards.remove(value);
    prefs.setStringList('ff_mySelectedWards', _mySelectedWards);
  }

  void removeAtIndexFromMySelectedWards(int index) {
    mySelectedWards.removeAt(index);
    prefs.setStringList('ff_mySelectedWards', _mySelectedWards);
  }

  void updateMySelectedWardsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mySelectedWards[index] = updateFn(_mySelectedWards[index]);
    prefs.setStringList('ff_mySelectedWards', _mySelectedWards);
  }

  void insertAtIndexInMySelectedWards(int index, String value) {
    mySelectedWards.insert(index, value);
    prefs.setStringList('ff_mySelectedWards', _mySelectedWards);
  }

  bool _isPushEnabled = false;
  bool get isPushEnabled => _isPushEnabled;
  set isPushEnabled(bool value) {
    _isPushEnabled = value;
    prefs.setBool('ff_isPushEnabled', value);
  }

  bool _isSoundEnabled = true;
  bool get isSoundEnabled => _isSoundEnabled;
  set isSoundEnabled(bool value) {
    _isSoundEnabled = value;
    prefs.setBool('ff_isSoundEnabled', value);
  }

  String _currentWardUnitName = '';
  String get currentWardUnitName => _currentWardUnitName;
  set currentWardUnitName(String value) {
    _currentWardUnitName = value;
    prefs.setString('ff_currentWardUnitName', value);
  }

  int _notificationCount = 0;
  int get notificationCount => _notificationCount;
  set notificationCount(int value) {
    _notificationCount = value;
  }

  String _selectedType = '';
  String get selectedType => _selectedType;
  set selectedType(String value) {
    _selectedType = value;
    prefs.setString('ff_selectedType', value);
  }

  DateTime? _lastRegistrationTime;
  DateTime? get lastRegistrationTime => _lastRegistrationTime;
  set lastRegistrationTime(DateTime? value) {
    _lastRegistrationTime = value;
    value != null
        ? prefs.setInt('ff_lastRegistrationTime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_lastRegistrationTime');
  }

  bool _showRegistrationSuccess = false;
  bool get showRegistrationSuccess => _showRegistrationSuccess;
  set showRegistrationSuccess(bool value) {
    _showRegistrationSuccess = value;
    prefs.setBool('ff_showRegistrationSuccess', value);
  }

  String _registeredWadName = '';
  String get registeredWadName => _registeredWadName;
  set registeredWadName(String value) {
    _registeredWadName = value;
    prefs.setString('ff_registeredWadName', value);
  }

  String _fcmToken = '';
  String get fcmToken => _fcmToken;
  set fcmToken(String value) {
    _fcmToken = value;
    prefs.setString('ff_fcmToken', value);
  }
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
