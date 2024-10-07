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
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int getAge(DateTime dob) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - dob.year;
  int month1 = currentDate.month;
  int month2 = dob.month;

  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = dob.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age;
}

dynamic latLngToJSON(LatLng location) {
  return {
    'latitude': location.latitude,
    'longitude': location.longitude,
  };
}

LatLng toLatLng(
  double latitude,
  double longitude,
) {
  return LatLng(latitude, longitude);
}
