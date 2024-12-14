// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> btnNo(BuildContext context) async {
  String docID = FFAppState().docIDList[FFAppState().currentDocIndex];
  int currentSectionIndex = FFAppState().currentSectionIndex;

  try {
    await FirebaseFirestore.instance
        .collection(FFAppState().sections[currentSectionIndex])
        .doc(docID)
        .update({'response': 0.0}); // btnNo always sets response to 0%
    print('Response field updated successfully for document ID: $docID');

    // Check if the current question is the last one
    if (FFAppState().currentDocIndex == FFAppState().docIDList.length - 1) {
      // Show completion dialog and update progress
      await showCompletionDialog(context);
    } else {
      // Increment the index for the next document
      FFAppState().update(() {
        FFAppState().currentDocIndex += 1;
      });

      // Fetch the next question
      await fetchContentByIndex();
    }
  } catch (e) {
    print('Error updating response field: $e');
  }
}
