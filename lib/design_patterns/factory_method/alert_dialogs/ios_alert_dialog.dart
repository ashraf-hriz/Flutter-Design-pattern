import 'package:flutter/cupertino.dart';

import '../custom_dialoge.dart';

class IosAlertDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text('This is Cupertino style alert dialog'),
      actions: [
        CupertinoButton(
          child: const Text('close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return 'Ios Alert Dialog';
  }
}
