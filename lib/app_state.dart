import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _infoToggle = prefs.getBool('ff_infoToggle') ?? _infoToggle;
    });
    _safeInit(() {
      _favs =
          prefs.getStringList('ff_favs')?.map((path) => path.ref).toList() ??
              _favs;
    });
    _safeInit(() {
      _recentPlaces = prefs.getStringList('ff_recentPlaces') ?? _recentPlaces;
    });
    _safeInit(() {
      _city = prefs.getString('ff_city') ?? _city;
    });
    _safeInit(() {
      _reminder = prefs.getBool('ff_reminder') ?? _reminder;
    });
    _safeInit(() {
      _preview = prefs.getString('ff_preview')?.ref ?? _preview;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _infoToggle = true;
  bool get infoToggle => _infoToggle;
  set infoToggle(bool value) {
    _infoToggle = value;
    prefs.setBool('ff_infoToggle', value);
  }

  List<DocumentReference> _favs = [];
  List<DocumentReference> get favs => _favs;
  set favs(List<DocumentReference> value) {
    _favs = value;
    prefs.setStringList('ff_favs', value.map((x) => x.path).toList());
  }

  void addToFavs(DocumentReference value) {
    _favs.add(value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.path).toList());
  }

  void removeFromFavs(DocumentReference value) {
    _favs.remove(value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavs(int index) {
    _favs.removeAt(index);
    prefs.setStringList('ff_favs', _favs.map((x) => x.path).toList());
  }

  void updateFavsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _favs[index] = updateFn(_favs[index]);
    prefs.setStringList('ff_favs', _favs.map((x) => x.path).toList());
  }

  void insertAtIndexInFavs(int index, DocumentReference value) {
    _favs.insert(index, value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.path).toList());
  }

  String _roomType = '';
  String get roomType => _roomType;
  set roomType(String value) {
    _roomType = value;
  }

  String _institution = '';
  String get institution => _institution;
  set institution(String value) {
    _institution = value;
  }

  String _funding = '';
  String get funding => _funding;
  set funding(String value) {
    _funding = value;
  }

  List<String> _recentPlaces = [];
  List<String> get recentPlaces => _recentPlaces;
  set recentPlaces(List<String> value) {
    _recentPlaces = value;
    prefs.setStringList('ff_recentPlaces', value);
  }

  void addToRecentPlaces(String value) {
    _recentPlaces.add(value);
    prefs.setStringList('ff_recentPlaces', _recentPlaces);
  }

  void removeFromRecentPlaces(String value) {
    _recentPlaces.remove(value);
    prefs.setStringList('ff_recentPlaces', _recentPlaces);
  }

  void removeAtIndexFromRecentPlaces(int index) {
    _recentPlaces.removeAt(index);
    prefs.setStringList('ff_recentPlaces', _recentPlaces);
  }

  void updateRecentPlacesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _recentPlaces[index] = updateFn(_recentPlaces[index]);
    prefs.setStringList('ff_recentPlaces', _recentPlaces);
  }

  void insertAtIndexInRecentPlaces(int index, String value) {
    _recentPlaces.insert(index, value);
    prefs.setStringList('ff_recentPlaces', _recentPlaces);
  }

  String _city = '';
  String get city => _city;
  set city(String value) {
    _city = value;
    prefs.setString('ff_city', value);
  }

  bool _reminder = false;
  bool get reminder => _reminder;
  set reminder(bool value) {
    _reminder = value;
    prefs.setBool('ff_reminder', value);
  }

  List<int> _numberOfRooms = [];
  List<int> get numberOfRooms => _numberOfRooms;
  set numberOfRooms(List<int> value) {
    _numberOfRooms = value;
  }

  void addToNumberOfRooms(int value) {
    _numberOfRooms.add(value);
  }

  void removeFromNumberOfRooms(int value) {
    _numberOfRooms.remove(value);
  }

  void removeAtIndexFromNumberOfRooms(int index) {
    _numberOfRooms.removeAt(index);
  }

  void updateNumberOfRoomsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _numberOfRooms[index] = updateFn(_numberOfRooms[index]);
  }

  void insertAtIndexInNumberOfRooms(int index, int value) {
    _numberOfRooms.insert(index, value);
  }

  int _roomscount = 1;
  int get roomscount => _roomscount;
  set roomscount(int value) {
    _roomscount = value;
  }

  bool _getStarted = true;
  bool get getStarted => _getStarted;
  set getStarted(bool value) {
    _getStarted = value;
  }

  bool _listingRoom = false;
  bool get listingRoom => _listingRoom;
  set listingRoom(bool value) {
    _listingRoom = value;
  }

  bool _numberRooms = false;
  bool get numberRooms => _numberRooms;
  set numberRooms(bool value) {
    _numberRooms = value;
  }

  bool _features = false;
  bool get features => _features;
  set features(bool value) {
    _features = value;
  }

  bool _rules = false;
  bool get rules => _rules;
  set rules(bool value) {
    _rules = value;
  }

  bool _location = false;
  bool get location => _location;
  set location(bool value) {
    _location = value;
  }

  bool _images = false;
  bool get images => _images;
  set images(bool value) {
    _images = value;
  }

  bool _listingName = false;
  bool get listingName => _listingName;
  set listingName(bool value) {
    _listingName = value;
  }

  int _initialScroller = 0;
  int get initialScroller => _initialScroller;
  set initialScroller(int value) {
    _initialScroller = value;
  }

  String _imageHeader = '';
  String get imageHeader => _imageHeader;
  set imageHeader(String value) {
    _imageHeader = value;
  }

  LatLng? _address = const LatLng(-26.1899293, 28.0319482);
  LatLng? get address => _address;
  set address(LatLng? value) {
    _address = value;
  }

  bool _propertyType = false;
  bool get propertyType => _propertyType;
  set propertyType(bool value) {
    _propertyType = value;
  }

  String _titleNoBeds = '';
  String get titleNoBeds => _titleNoBeds;
  set titleNoBeds(String value) {
    _titleNoBeds = value;
  }

  String _dwelingType = '';
  String get dwelingType => _dwelingType;
  set dwelingType(String value) {
    _dwelingType = value;
  }

  bool _logo = false;
  bool get logo => _logo;
  set logo(bool value) {
    _logo = value;
  }

  String _furnishedOrNot = '';
  String get furnishedOrNot => _furnishedOrNot;
  set furnishedOrNot(String value) {
    _furnishedOrNot = value;
  }

  List<RoomTypesStruct> _addMyRooms = [];
  List<RoomTypesStruct> get addMyRooms => _addMyRooms;
  set addMyRooms(List<RoomTypesStruct> value) {
    _addMyRooms = value;
  }

  void addToAddMyRooms(RoomTypesStruct value) {
    _addMyRooms.add(value);
  }

  void removeFromAddMyRooms(RoomTypesStruct value) {
    _addMyRooms.remove(value);
  }

  void removeAtIndexFromAddMyRooms(int index) {
    _addMyRooms.removeAt(index);
  }

  void updateAddMyRoomsAtIndex(
    int index,
    RoomTypesStruct Function(RoomTypesStruct) updateFn,
  ) {
    _addMyRooms[index] = updateFn(_addMyRooms[index]);
  }

  void insertAtIndexInAddMyRooms(int index, RoomTypesStruct value) {
    _addMyRooms.insert(index, value);
  }

  List<DocumentReference> _temppUser = [];
  List<DocumentReference> get temppUser => _temppUser;
  set temppUser(List<DocumentReference> value) {
    _temppUser = value;
  }

  void addToTemppUser(DocumentReference value) {
    _temppUser.add(value);
  }

  void removeFromTemppUser(DocumentReference value) {
    _temppUser.remove(value);
  }

  void removeAtIndexFromTemppUser(int index) {
    _temppUser.removeAt(index);
  }

  void updateTemppUserAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _temppUser[index] = updateFn(_temppUser[index]);
  }

  void insertAtIndexInTemppUser(int index, DocumentReference value) {
    _temppUser.insert(index, value);
  }

  SelectedAddressStruct _selectedAddresss =
      SelectedAddressStruct.fromSerializableMap(
          jsonDecode('{"location":"-26.1899293,28.0319482"}'));
  SelectedAddressStruct get selectedAddresss => _selectedAddresss;
  set selectedAddresss(SelectedAddressStruct value) {
    _selectedAddresss = value;
  }

  void updateSelectedAddresssStruct(Function(SelectedAddressStruct) updateFn) {
    updateFn(_selectedAddresss);
  }

  DocumentReference? _preview;
  DocumentReference? get preview => _preview;
  set preview(DocumentReference? value) {
    _preview = value;
    value != null
        ? prefs.setString('ff_preview', value.path)
        : prefs.remove('ff_preview');
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
