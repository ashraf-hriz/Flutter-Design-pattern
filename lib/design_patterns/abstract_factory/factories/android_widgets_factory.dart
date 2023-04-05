import 'package:flutter_design_pattern/design_patterns/abstract_factory/widgets/iswitch.dart';

import 'package:flutter_design_pattern/design_patterns/abstract_factory/widgets/islider.dart';

import 'package:flutter_design_pattern/design_patterns/abstract_factory/widgets/iactivity_indicator.dart';

import '../iwidgets_factories.dart';
import '../widgets/activity_indicator/android_activity_indicator.dart';
import '../widgets/sliders/android_slider.dart';
import '../widgets/switchs/android_switch.dart';

class AndroidWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return AndroidSlider();
  }

  @override
  ISwitch createSwitch() {
    return AndroidSwitch();
  }

  @override
  String getTitle() {
    return 'Android Widgets';
  }
}
