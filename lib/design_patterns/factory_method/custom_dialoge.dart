import 'package:flutter/material.dart';

abstract class CustomDialog {
  String getTitle();
  Widget create(BuildContext context);

  Future<void> show(BuildContext context) {
    var dialog = create(context);

    return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return dialog;
        });
  }
}
