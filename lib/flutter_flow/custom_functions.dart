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
import '/auth/firebase_auth/auth_util.dart';

int distance(
  LatLng latlon1,
  LatLng latlon2,
) {
  double lat1 = latlon1.latitude;
  double lon1 = latlon1.longitude;
  double lat2 = latlon2.latitude;
  double lon2 = latlon2.longitude;
  var p = 0.017453292519943295;
  var c = math.cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  // Returns distance in Kilo-meters
  var d = (12742 * math.asin(math.sqrt(a)));
  String inString = d.toStringAsFixed(2); // '2.35'
  int inint = int.parse(inString);
  return inint;
}

double average(List<double> ratings) {
  double ans = 0;
  for (double r in ratings) {
    ans += r;
  }

  ans /= ratings.length.toDouble();
  ans *= 10;

  return ans.round() / 10;
}

int costcalc(int hrs) {
  return (hrs * 400) + 80;
}
