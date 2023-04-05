

import '../iwidgets_factories.dart';
import '../widgets/activity_indicator/ios_activity_indicator.dart';
import '../widgets/iactivity_indicator.dart';
import '../widgets/islider.dart';
import '../widgets/iswitch.dart';
import '../widgets/sliders/ios_slider.dart';
import '../widgets/switchs/ios_switch.dart';

class IosWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  ISlider createSlider() {
    return IosSlider();
  }

  @override
  ISwitch createSwitch() {
    return IosSwitch();
  }

  @override
  String getTitle() {
    return 'Ios Widgets';
  }
}