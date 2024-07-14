// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> fetchContentByIndex() async {
  int currentIndex = FFAppState().currentDocIndex;
  List<String> docIDs = FFAppState().docIDList;
  String currentCollection =
      FFAppState().sections[FFAppState().currentSectionIndex];

  if (docIDs.isEmpty) {
    print('No document IDs available');
    return;
  }

  if (currentIndex >= docIDs.length) {
    print('Index out of bounds');
    return;
  }

  String docID = docIDs[currentIndex];

  try {
    DocumentSnapshot document = await FirebaseFirestore.instance
        .collection(currentCollection)
        .doc(docID)
        .get();
    if (document.exists) {
      var data = document.data() as Map<String, dynamic>;
      var questionid = data['questionid'];
      var questiontitle = data['questiontitle'];
      var questionlist = data['questionlist'];
      var question = data['question'];
      var response = data['response'];

      FFAppState().update(() {
        FFAppState().questionid = questionid;
        FFAppState().questiontitle = questiontitle;
        FFAppState().questionlist = questionlist;
        FFAppState().question = question;
        FFAppState().response = response;
      });
    } else {
      print('Document does not exist');
    }
  } catch (e) {
    print('Error fetching document: $e');
  }
}
