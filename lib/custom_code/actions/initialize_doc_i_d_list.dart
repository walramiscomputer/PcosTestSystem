// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> initializeDocIDList() async {
  try {
    String currentCollection =
        FFAppState().sections[FFAppState().currentSectionIndex];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(currentCollection).get();

    List<Map<String, dynamic>> documents = querySnapshot.docs.map((doc) {
      return {'docID': doc.id, 'questionid': doc['questionid'] as int};
    }).toList();

    documents.sort((a, b) => a['questionid'].compareTo(b['questionid']));

    List<String> sortedDocIDs =
        documents.map((doc) => doc['docID'] as String).toList();

    FFAppState().update(() {
      FFAppState().docIDList = sortedDocIDs;
      FFAppState().currentDocIndex = 0;
    });

    await fetchContentByIndex();
  } catch (e) {
    print('Error initializing document ID list: $e');
  }
}
