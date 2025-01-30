import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/about_me_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/computer_animation.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';

class TabletAboutMeSection extends StatelessWidget {
  const TabletAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.aboutKey,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: Constants.kTabletHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const SectionHeader(headerText: 'About Me'),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .30,
            child: const ComputerAnimation(),
          ),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const AboutMeText(),
          const SizedBox(height: Constants.kTabletVerticalPadding),
        ],
      ),
    );
  }
}
