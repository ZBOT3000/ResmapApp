import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction(
  LatLng? dist1,
  LatLng? dist2,
) {
  // calculate distance in kilometres between two LatLng coordinates
  if (dist1 == null || dist2 == null) {
    return null;
  }
  var p = 0.017453292519943295;
  var c = math.cos;
  var a = 0.5 -
      c((dist2.latitude - dist1.latitude) * p) / 2 +
      c(dist1.latitude * p) *
          c(dist2.latitude * p) *
          (1 - c((dist2.longitude - dist1.longitude) * p)) /
          2;
  return (12742 * math.asin(math.sqrt(a))).toStringAsFixed(2);
}

String? fromLowest(List<String>? price) {
  //  from the list of prices, return the lowest number
  if (price == null) {
    return null;
  }
  if (price.isEmpty) {
    return null;
  }
  if (price.length == 1) {
    return price[0];
  }
  String? lowest = price[0];
  for (int i = 1; i < price.length; i++) {
    if (lowest != null && price[i] != null) {
      if (double.parse(lowest) > double.parse(price[i])) {
        lowest = price[i];
      }
    }
  }
  return lowest;
}

String? age(String? id) {
  // calculate age from ID number yymmdd
  if (id == null || id.length != 6) {
    return null;
  }
  final now = DateTime.now();
  final year = int.parse(id.substring(0, 2));
  final month = int.parse(id.substring(2, 4));
  final day = int.parse(id.substring(4, 6));
  final birthDate =
      DateTime(year > now.year - 2000 ? year + 1900 : year + 2000, month, day);
  final age = now.year -
      birthDate.year -
      (now.month < birthDate.month ||
              (now.month == birthDate.month && now.day < birthDate.day)
          ? 1
          : 0);
  return age.toString();
}

String? dateYear(String? dateInput) {
  // convert ONLY first 4 digits to date i.e 99042657=1999-04-26 and 0104267899=2001-04-26
  if (dateInput == null || dateInput.length < 4) {
    return null;
  }
  final year = int.parse(dateInput.substring(0, 2));
  final month = int.parse(dateInput.substring(2, 4));
  final day = int.parse(dateInput.substring(4, math.min(dateInput.length, 6)));
  final century = year >= 50 ? 1900 : 2000;
  final fullYear = century + year;
  final formattedDate =
      DateFormat('yyyy-MM-dd').format(DateTime(fullYear, month, day));
  return formattedDate;
}

int increment() {
  // increment  value by 1 every two seconds while value <=3. return value
  int value = 0;
  Future.delayed(Duration(seconds: 2), () {
    value++;
    if (value <= 3) {
      increment();
    }
  });
  return value.toInt();
}
