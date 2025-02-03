import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/about_me_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/computer_animation.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';

class DesktopAboutMeSection extends StatelessWidget {
  const DesktopAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.aboutKey,
      reverse: true,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: const Column(
        children: [
          SizedBox(height: Constants.kDesktopVerticalPadding),
          SectionHeader(headerText: 'About Me'),
          SizedBox(height: Constants.kDesktopVerticalPadding),
          Row(
            children: [
              Expanded(child: ComputerAnimation()),
              SizedBox(width: 50),
              Expanded(
                flex: 3,
                child: AboutMeText(),
              ),
            ],
          ),
          SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
