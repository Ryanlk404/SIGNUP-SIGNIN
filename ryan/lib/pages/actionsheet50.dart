import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ryan/pages/signin.dart';
// ignore: unused_import
import 'package:ryan/pages/signup.dart';

void showCustomActionSheet(BuildContext context,
    {required Function onSignUp, required Function onClose}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text(
        'Choose an Action',
        style: TextStyle(color: Colors.blueAccent),
      ),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          child: const Text('Sign Up'),
          onPressed: () {
            Navigator.pop(context);
            onSignUp();
          },
        ),
        CupertinoActionSheetAction(
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.red),
          ),
          onPressed: () {
            Navigator.pop(context);
            onClose();
          },
        ),
      ],
    ),
  );
}
