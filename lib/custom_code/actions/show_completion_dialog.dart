// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

void updateProgress() {
  int totalSections = FFAppState().sections.length;
  if (totalSections == 0) return;

  double progress = (FFAppState().currentSectionIndex + 1) / totalSections;
  FFAppState().update(() {
    FFAppState().progress = progress;
  });
}

// Show completion dialog function
Future<void> showCompletionDialog(BuildContext context) async {
  // Update progress as soon as the section is completed
  updateProgress();

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Section Complete'),
        content: Text(
          FFAppState().currentSectionIndex < FFAppState().sections.length - 1
              ? 'You have completed this section. What would you like to do next?'
              : 'Congratulations! You have completed all sections.',
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Back to Home Page'),
            onPressed: () {
              Navigator.of(context).pop();
              context.go('/homePage');
            },
          ),
          if (FFAppState().currentSectionIndex <
              FFAppState().sections.length - 1)
            TextButton(
              child: Text('Continue to Next Section'),
              onPressed: () async {
                Navigator.of(context).pop();

                // Check if there's another section
                if (FFAppState().currentSectionIndex <
                    FFAppState().sections.length - 1) {
                  FFAppState().update(() {
                    FFAppState().currentSectionIndex +=
                        1; // Move to the next section
                  });

                  // Initialize document list for the new section
                  await initializeDocIDList();
                } else {
                  // No more sections, navigate to a completion page or show a message
                  print('All sections completed');
                }
              },
            ),
        ],
      );
    },
  );
}
