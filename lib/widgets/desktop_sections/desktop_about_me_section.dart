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
      // ignore: prefer_const_constructors
      child: Column(
        children: [
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          // ignore: prefer_const_constructors
          SectionHeader(headerText: 'About Me'),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          // ignore: prefer_const_constructors
          Row(
            children: [
              // ignore: prefer_const_constructors
              Expanded(child: ComputerAnimation()),
              const SizedBox(width: 50),
              // ignore: prefer_const_constructors
              Expanded(
                flex: 3,
                // ignore: prefer_const_constructors
                child: AboutMeText(),
              ),
            ],
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
