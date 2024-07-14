// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> getTotalResponses() async {
  double totalResponses = 0.0;

  for (String section in FFAppState().sections) {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(section).get();

    for (QueryDocumentSnapshot doc in querySnapshot.docs) {
      totalResponses += doc['response'] ?? 0.0;
    }
  }

  FFAppState().update(() {
    FFAppState().totalResponses = totalResponses;
  });
}
