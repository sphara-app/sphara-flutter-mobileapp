// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future customConfirmDialog(
  BuildContext context,
  String? imageUrl,
) async {
  // custom show dialog with image icon and text in body and continue button

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Custom Confirm Dialog'),
        content: Container(
          height: 100,
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/flutter_logo.png'),
              Text('Do you want to continue?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Continue'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
}
