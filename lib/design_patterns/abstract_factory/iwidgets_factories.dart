

import 'package:flutter_design_pattern/design_patterns/abstract_factory/widgets/islider.dart';
import 'package:flutter_design_pattern/design_patterns/abstract_factory/widgets/iswitch.dart';

import 'widgets/iactivity_indicator.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IActivityIndicator createActivityIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}
