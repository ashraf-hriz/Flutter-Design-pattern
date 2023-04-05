import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/core/global_widgets/design_pattern/factory_method/dialoge_selection.dart';

import '../../../../design_patterns/factory_method/alert_dialogs/android_alert_dialog.dart';
import '../../../../design_patterns/factory_method/alert_dialogs/ios_alert_dialog.dart';
import '../../../../design_patterns/factory_method/custom_dialoge.dart';
import '../../../../features/main_menu/presentation/widgets/plateform_button.dart';
import '../../../constants/layout_constants.dart';

class FactoryMethodExampleScreen extends StatefulWidget {
  const FactoryMethodExampleScreen({super.key});

  @override
  State<FactoryMethodExampleScreen> createState() =>
      _FactoryMethodExampleScreenState();
}

class _FactoryMethodExampleScreenState
    extends State<FactoryMethodExampleScreen> {
  List<CustomDialog> customDialogList = [
    AndroidAlertDialog(),
    IosAlertDialog()
  ];
  int _selectedDialogIndex = 0;
  
  _showSelectedCustomDialog(BuildContext context) {
    return customDialogList[_selectedDialogIndex].show(context);
  }

  void _setSelectedDialogIndex(int? index) {
    setState(() {
      _selectedDialogIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingL),
        child: Column(
          children: [
             DialogSelection(
              customDialogList: customDialogList,
              selectedDialog: _selectedDialogIndex,
              onChanged: _setSelectedDialogIndex,
            ),
            const SizedBox(height: LayoutConstants.spaceL),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: () => _showSelectedCustomDialog(context),
              text: 'Show Dialog',
            ),
          ],
        ),
      ),
    );
  }
}
