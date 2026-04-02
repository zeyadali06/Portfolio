import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/about_me_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/computer_animation.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';

class MobileAboutMeSection extends StatelessWidget {
  const MobileAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.aboutKey,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kMobileHorizontalPadding),
      reverse: true,
      child: Column(
        children: [
          const SizedBox(height: Constants.kMobileVerticalPadding),
          // ignore: prefer_const_constructors
          SectionHeader(headerText: context.tr.about_me),
          const SizedBox(height: Constants.kMobileVerticalPadding),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .30,
            // ignore: prefer_const_constructors
            child: ComputerAnimation(),
          ),
          const SizedBox(height: Constants.kMobileVerticalPadding),
          // ignore: prefer_const_constructors
          AboutMeText(),
          const SizedBox(height: Constants.kMobileVerticalPadding),
        ],
      ),
    );
  }
}
