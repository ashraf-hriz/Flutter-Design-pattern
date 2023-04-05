import 'package:flutter/material.dart';

import '../custom_dialoge.dart';

class AndroidAlertDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return AlertDialog(
      title: Text(getTitle()),
      content: const Text('This is the material alert dialog'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('close'),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Android Alert Dialog';
  }
}
