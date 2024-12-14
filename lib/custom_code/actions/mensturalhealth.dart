// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> mensturalhealth(BuildContext context) async {
  // Set the current section index to 1 (or the index for 'question1')
  FFAppState().update(() {
    FFAppState().currentSectionIndex = 0;
  });

  // Initialize document list for the new section
  await initializeDocIDList();
}
