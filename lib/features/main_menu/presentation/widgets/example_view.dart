import 'package:flutter/material.dart';

import '../../../../core/constants/layout_constants.dart';
import '../../../../core/global_widgets/design_pattern/design_pattern_factory.dart';

class ExampleView extends StatelessWidget {
  final String designPatternId;
  const ExampleView({super.key, required this.designPatternId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(LayoutConstants.paddingL),
      child: DesignPatternFactory.create(designPatternId),
    );
  }
}
