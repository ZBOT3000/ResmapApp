// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Duration debounceDuration = const Duration(milliseconds: 300);

class PlacePickerHuaweiApi extends StatefulWidget {
  const PlacePickerHuaweiApi({
    Key? key,
    this.width,
    this.height,
    required this.rebuildPage,
    required this.apiKey,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String apiKey;
  final Future<dynamic> Function() rebuildPage;

  @override
  _PlacePickerHuaweiApiState createState() => _PlacePickerHuaweiApiState();
}

class _PlacePickerHuaweiApiState extends State<PlacePickerHuaweiApi> {
  String? _currentQuery;
  late Iterable<String> _lastOptions = <String>[];
  late final _Debounceable<Iterable<String>?, String> _debouncedSearch;

  Map _database = {};

  Future<List<String>?> _getSuggestions(String query) async {
    _currentQuery = query;
    String apiKey = widget.apiKey;
    String encodedApiKey = Uri.encodeComponent(apiKey);
    String url =
        'https://siteapi.cloud.huawei.com/mapApi/v1/siteService/queryAutoComplete?key=$encodedApiKey';

    Map<String, dynamic> body = {"query": query, "language": 'en'};

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: json.encode(body),
    );

    List<String> returned = [];
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response, parse the JSON
      Map data = json.decode(response.body);
      if (data['sites'] == null) {
        return null;
      }
      for (Map address in data['sites']) {
        returned.add(address['formatAddress']);
        _database.putIfAbsent(
            address['formatAddress'],
            () => [
                  address['location']['lat'],
                  address['location']['lng'],
                  address['address']['country'],
                  address['address']['countryCode'],
                  address['address']['city'] ?? address['address']['locality'],
                  address['address']['thoroughfare'],
                  address['address']['postalCode'],
                  address['address']['adminArea']
                ]);
      }
    } else {
      return null;
    }

    if (_currentQuery != query) {
      return null;
    }
    _currentQuery = null;

    return returned;
  }

  Future<List<dynamic>> _getCoordinates(String query) async {
    String apiKey = widget.apiKey;
    String encodedApiKey = Uri.encodeComponent(apiKey);
    String url =
        'https://siteapi.cloud.huawei.com/mapApi/v1/siteService/geocode?key=$encodedApiKey';
    Map<String, dynamic> body = {"address": query, "language": 'en'};

    final http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response, parse the JSON
      Map data = json.decode(response.body);
      if (data['sites'] == null) {
        return [];
      }
      return [
        data['sites'][0]['location']['lat'],
        data['sites'][0]['location']['lng'],
        data['sites'][0]['address']['country'],
        data['sites'][0]['address']['countryCode'],
        data['sites'][0]['address']['city'] ??
            data['sites'][0]['address']['locality'],
        data['sites'][0]['address']['thoroughfare'],
        data['sites'][0]['address']['postalCode'],
        data['sites'][0]['address']['adminArea'],
        data['sites'][0]['formatAddress'],
      ];
    } else {
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    _debouncedSearch = _debounce<Iterable<String>?, String>(_getSuggestions);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) async {
          final Iterable<String>? options =
              await _debouncedSearch(textEditingValue.text);
          if (options == null) {
            return _lastOptions;
          }
          _lastOptions = options;
          return options;
        },
        onSelected: (selection) async {
          List coords = _database[selection] as List;
          FFAppState().selectedAddresss.location = LatLng(coords[0], coords[1]);
          FFAppState().selectedAddresss.fullAddress = selection;
          FFAppState().selectedAddresss.country = coords[2];
          FFAppState().selectedAddresss.countryCode = coords[3];
          FFAppState().selectedAddresss.city = coords[4];
          FFAppState().selectedAddresss.streetName = coords[5];
          FFAppState().selectedAddresss.postalCode = coords[6];
          FFAppState().selectedAddresss.province = coords[7];
          widget.rebuildPage();
        },
        fieldViewBuilder: (BuildContext context,
            TextEditingController textEditingController,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted) {
          return TextFormField(
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (String value) async {
              List coords;
              if (_database[value] != null) {
                coords = _database[value] as List;
                FFAppState().selectedAddresss.location =
                    LatLng(coords[0], coords[1]);
                FFAppState().selectedAddresss.fullAddress = value;
                FFAppState().selectedAddresss.country = coords[2];
                FFAppState().selectedAddresss.countryCode = coords[3];
                FFAppState().selectedAddresss.city = coords[4];
                FFAppState().selectedAddresss.streetName = coords[5];
                FFAppState().selectedAddresss.postalCode = coords[6];
                FFAppState().selectedAddresss.province = coords[7];
              } else {
                coords = await _getCoordinates(value);
                FFAppState().selectedAddresss.location =
                    LatLng(coords[0], coords[1]);
                FFAppState().selectedAddresss.fullAddress = coords[8];
                FFAppState().selectedAddresss.country = coords[2];
                FFAppState().selectedAddresss.countryCode = coords[3];
                FFAppState().selectedAddresss.city = coords[4];
                FFAppState().selectedAddresss.streetName = coords[5];
                FFAppState().selectedAddresss.postalCode = coords[6];
                FFAppState().selectedAddresss.province = coords[7];
              }
              widget.rebuildPage();
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueAccent,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)),
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () async {
                  List coords;
                  if (_database[textEditingController.text] != null) {
                    coords = _database[textEditingController.text] as List;
                    FFAppState().selectedAddresss.location =
                        LatLng(coords[0], coords[1]);
                    FFAppState().selectedAddresss.fullAddress =
                        textEditingController.text;
                    FFAppState().selectedAddresss.country = coords[2];
                    FFAppState().selectedAddresss.countryCode = coords[3];
                    FFAppState().selectedAddresss.city = coords[4];
                    FFAppState().selectedAddresss.streetName = coords[5];
                    FFAppState().selectedAddresss.postalCode = coords[6];
                    FFAppState().selectedAddresss.province = coords[7];
                  } else {
                    coords = await _getCoordinates(textEditingController.text);
                    FFAppState().selectedAddresss.location =
                        LatLng(coords[0], coords[1]);
                    FFAppState().selectedAddresss.fullAddress = coords[8];
                    FFAppState().selectedAddresss.country = coords[2];
                    FFAppState().selectedAddresss.countryCode = coords[3];
                    FFAppState().selectedAddresss.city = coords[4];
                    FFAppState().selectedAddresss.streetName = coords[5];
                    FFAppState().selectedAddresss.postalCode = coords[6];
                    FFAppState().selectedAddresss.province = coords[7];
                  }
                  widget.rebuildPage();
                },
              ),
              hintText: 'Search for an address',
            ),
          );
        },
      ),
    );
  }
}

typedef _Debounceable<S, T> = Future<S?> Function(T parameter);

_Debounceable<S, T> _debounce<S, T>(_Debounceable<S?, T> function) {
  _DebounceTimer? debounceTimer;

  return (T parameter) async {
    if (debounceTimer != null && !debounceTimer!.isCompleted) {
      debounceTimer!.cancel();
    }
    debounceTimer = _DebounceTimer();
    try {
      await debounceTimer!.future;
    } catch (error) {
      if (error is _CancelException) {
        return null;
      }
      rethrow;
    }
    return function(parameter);
  };
}

class _DebounceTimer {
  _DebounceTimer() {
    _timer = Timer(debounceDuration, _onComplete);
  }

  late final Timer _timer;
  final Completer<void> _completer = Completer<void>();

  void _onComplete() {
    _completer.complete();
  }

  Future<void> get future => _completer.future;

  bool get isCompleted => _completer.isCompleted;

  void cancel() {
    _timer.cancel();
    _completer.completeError(const _CancelException());
  }
}

class _CancelException implements Exception {
  const _CancelException();
}
