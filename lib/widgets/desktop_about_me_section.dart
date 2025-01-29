import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/about_me_text.dart';
import 'package:portfolio/widgets/custom_widgets/computer_animation.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/custom_widgets/section_header.dart';

class DesktopAboutMeSection extends StatelessWidget {
  const DesktopAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.aboutKey,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: Constants.kPadding),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const SectionHeader(headerText: 'About Me'),
          const SizedBox(height: 50),
          Row(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * .225,
                height: MediaQuery.sizeOf(context).width * .225,
                padding: const EdgeInsets.only(right: Constants.kPadding),
                child: const ComputerAnimation(),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: Constants.kPadding),
                  child: AboutMeText(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
