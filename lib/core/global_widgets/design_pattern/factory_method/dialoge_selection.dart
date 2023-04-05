import 'package:flutter/material.dart';

import '../../../../design_patterns/factory_method/custom_dialoge.dart';

class DialogSelection extends StatelessWidget {
  final List<CustomDialog> customDialogList;
  final int selectedDialog;
  final ValueSetter<int?> onChanged;
  const DialogSelection({
    super.key,
    required this.customDialogList,
    required this.selectedDialog,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < customDialogList
        .length; i++)
          RadioListTile(
            title: Text(customDialogList[i].getTitle()),
            value: i,
            groupValue: selectedDialog,
            selected: i == selectedDialog,
            activeColor: Colors.black,
            onChanged: onChanged,
          ),
      ],
    );
  }
}
