import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isNurse = false;
  bool get isNurse => _isNurse;
  set isNurse(bool value) {
    _isNurse = value;
  }

  List<dynamic> _domains = [
    jsonDecode(
        '{"name":"Pediatric","description":"Pediatric nursing is a specialization that focuses on the medical care of children from infancy to the teenage years. Pediatric nurses work with pediatricians, pediatric surgeons, and others who specialize in children\'s health issues."}'),
    jsonDecode(
        '{"name":"Neonatal","description":"A neonatal nurse practitioner (NNP) is a registered nurse with a master\'s degree and at least two years of experience as a bedside registered nurse in a Level III NICU. They are responsible for providing care for high-risk infants and toddlers up to age two."}'),
    jsonDecode(
        '{"name":"Cardiac Nurse","description":"Cardiac nursing is a nursing specialty that involves working with patients who have cardiovascular system conditions. Cardiac nurses provide medical care and promote healthy lifestyle choices to help reduce the risk of heart disease."}'),
    jsonDecode(
        '{"name":"Oncology Nurse","description":"An oncology nurse is a nurse who specializes in treating and caring for people who have cancer."}'),
    jsonDecode(
        '{"name":"Gerontological Nurse","description":"Gerontological nursing is a nursing specialty that focuses on caring for older adults. Gerontological nurses, also called geriatric nurses, work with older adults, their families, and communities to support healthy aging, maximum functioning, and quality of life."}'),
    jsonDecode(
        '{"name":"Orthopedic Nurse","description":"Orthopedic nursing is a nursing specialty that focuses on the prevention and treatment of musculoskeletal disorders."}'),
    jsonDecode(
        '{"name":"Critical Care Nurse","description":"Critical care nursing, also known as intensive care unit (ICU) nursing, is a healthcare field that focuses on caring for patients with life-threatening diseases, injuries, or who are post-surgical."}'),
    jsonDecode(
        '{"name":"Not Sure","description":"The user is not sure about his/her domain of requirement."}')
  ];
  List<dynamic> get domains => _domains;
  set domains(List<dynamic> value) {
    _domains = value;
  }

  void addToDomains(dynamic value) {
    _domains.add(value);
  }

  void removeFromDomains(dynamic value) {
    _domains.remove(value);
  }

  void removeAtIndexFromDomains(int index) {
    _domains.removeAt(index);
  }

  void updateDomainsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _domains[index] = updateFn(_domains[index]);
  }

  void insertAtIndexInDomains(int index, dynamic value) {
    _domains.insert(index, value);
  }
}
