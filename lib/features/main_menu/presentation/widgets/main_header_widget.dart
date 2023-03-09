
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/layout_constants.dart';
import '../../../../core/global_widgets/heartbeat_animation.dart';

class MainHeaderWidget extends StatelessWidget {
  const MainHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        const headerText ='Flutter\nDesign Patterns';

        return Column(
          crossAxisAlignment:
           CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerText,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                /*const SizedBox(width: LayoutConstants.spaceS),
                const LogoButton(
                  onPressed:
                  UrlLauncher.launchFlutterDesignPatternsIntroductionPage,
                ),*/
              ],
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Row(
              mainAxisAlignment:  MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Created with Flutter ',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(width: LayoutConstants.spaceM),
                const Padding(
                  padding: EdgeInsets.only(bottom: LayoutConstants.paddingS),
                  child: HeartbeatAnimation(
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Color(0xFFF78888),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: LayoutConstants.spaceL),
            Text.rich(
              TextSpan(
                text: 'by ',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w500),
                children: const [
                  TextSpan(
                    text: 'Asharf Mahmoud',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    /*recognizer: TapGestureRecognizer()
                      ..onTap = UrlLauncher.launchPersonalPage,*/
                  ),
                ],
              ),
            )
          ],
        );
      },
    );

  }
}
