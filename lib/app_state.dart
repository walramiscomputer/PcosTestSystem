import 'package:flutter/material.dart';

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

  List<double> _sectionPercentages = [2.0, 2.0, 2.0, 2.0, 0.14, 0.14, 2.0];
  List<double> get sectionPercentages => _sectionPercentages;
  set sectionPercentages(List<double> value) {
    _sectionPercentages = value;
  }

  void addToSectionPercentages(double value) {
    sectionPercentages.add(value);
  }

  void removeFromSectionPercentages(double value) {
    sectionPercentages.remove(value);
  }

  void removeAtIndexFromSectionPercentages(int index) {
    sectionPercentages.removeAt(index);
  }

  void updateSectionPercentagesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    sectionPercentages[index] = updateFn(_sectionPercentages[index]);
  }

  void insertAtIndexInSectionPercentages(int index, double value) {
    sectionPercentages.insert(index, value);
  }

  List<String> _sections = [
    'mensturalhealth',
    'excessivehairloss',
    'persistantacne',
    'weightgain',
    'foodsanddiet',
    'generalhealth',
    'insulinresistance'
  ];
  List<String> get sections => _sections;
  set sections(List<String> value) {
    _sections = value;
  }

  void addToSections(String value) {
    sections.add(value);
  }

  void removeFromSections(String value) {
    sections.remove(value);
  }

  void removeAtIndexFromSections(int index) {
    sections.removeAt(index);
  }

  void updateSectionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    sections[index] = updateFn(_sections[index]);
  }

  void insertAtIndexInSections(int index, String value) {
    sections.insert(index, value);
  }

  List<String> _docIDList = [];
  List<String> get docIDList => _docIDList;
  set docIDList(List<String> value) {
    _docIDList = value;
  }

  void addToDocIDList(String value) {
    docIDList.add(value);
  }

  void removeFromDocIDList(String value) {
    docIDList.remove(value);
  }

  void removeAtIndexFromDocIDList(int index) {
    docIDList.removeAt(index);
  }

  void updateDocIDListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    docIDList[index] = updateFn(_docIDList[index]);
  }

  void insertAtIndexInDocIDList(int index, String value) {
    docIDList.insert(index, value);
  }

  int _currentDocIndex = 0;
  int get currentDocIndex => _currentDocIndex;
  set currentDocIndex(int value) {
    _currentDocIndex = value;
  }

  int _questionid = 0;
  int get questionid => _questionid;
  set questionid(int value) {
    _questionid = value;
  }

  String _questiontitle = '';
  String get questiontitle => _questiontitle;
  set questiontitle(String value) {
    _questiontitle = value;
  }

  String _questionlist = '';
  String get questionlist => _questionlist;
  set questionlist(String value) {
    _questionlist = value;
  }

  String _question = '';
  String get question => _question;
  set question(String value) {
    _question = value;
  }

  double _response = 0.0;
  double get response => _response;
  set response(double value) {
    _response = value;
  }

  int _currentSectionIndex = 0;
  int get currentSectionIndex => _currentSectionIndex;
  set currentSectionIndex(int value) {
    _currentSectionIndex = value;
  }

  double _progress = 0.0;
  double get progress => _progress;
  set progress(double value) {
    _progress = value;
  }

  double _totalResponses = 0.0;
  double get totalResponses => _totalResponses;
  set totalResponses(double value) {
    _totalResponses = value;
  }
}
